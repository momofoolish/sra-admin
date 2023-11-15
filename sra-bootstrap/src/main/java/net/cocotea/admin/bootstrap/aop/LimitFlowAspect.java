package net.cocotea.admin.bootstrap.aop;

import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.core.util.StrUtil;
import net.cocotea.admin.bootstrap.properties.AopProperties;
import net.cocotea.admin.common.model.ApiResult;
import net.cocotea.admin.framework.service.IRedisService;
import net.cocotea.admin.framework.util.IpUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;

/**
 * 接口访问限制
 *
 * @author CoCoTea
 * @version v1.3.1
 */
@Aspect
@Component
public class LimitFlowAspect {
    private final Logger logger = LoggerFactory.getLogger(LimitFlowAspect.class);

    @Resource
    private AopProperties aopProperties;
    @Resource
    private IRedisService redisService;

    @Pointcut("execution(public * net.cocotea.admin.*.controller.*.*(..))")
    public void requestAspect() {
    }

    @Around(value = "requestAspect()")
    public Object methodBefore(ProceedingJoinPoint pjp) throws Throwable {
        // 接口访问限制
        boolean limitFlag = apiLimitAccessTimes();
        if (limitFlag) {
            return ApiResult.error("操作过快，请稍后再试！");
        } else {
            return pjp.proceed();
        }
    }

    /**
     * 接口访问限制：1秒内运行访问N次
     */
    private boolean apiLimitAccessTimes() {
        boolean flag = false;
        ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        if (requestAttributes != null && StpUtil.isLogin()) {
            String ip = IpUtils.getIp(requestAttributes.getRequest());
            String redisKey = ip + ":" + StpUtil.getLoginId();
            String value = redisService.get(redisKey);
            if (StrUtil.isBlank(value)) {
                redisService.save(redisKey, String.valueOf(1), 1L);
            } else if (Integer.parseInt(value) <= aopProperties.getVisits()) {
                int count = Integer.parseInt(value);
                count++;
                redisService.save(redisKey, String.valueOf(count), 1L);
            } else {
                flag = true;
            }
        }
        return flag;
    }

}
