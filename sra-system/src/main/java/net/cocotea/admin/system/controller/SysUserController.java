package net.cocotea.admin.system.controller;

import cn.dev33.satoken.annotation.SaCheckLogin;
import cn.dev33.satoken.annotation.SaCheckPermission;
import cn.dev33.satoken.annotation.SaCheckRole;
import cn.dev33.satoken.annotation.SaMode;
import com.alibaba.fastjson.JSONObject;
import net.cocotea.admin.common.model.ApiResult;
import net.cocotea.admin.common.model.BusinessException;
import net.cocotea.admin.system.service.SysUserService;
import net.cocotea.admin.system.vo.SysUserVO;
import net.cocotea.admin.system.param.user.SysUserAddParam;
import net.cocotea.admin.system.param.user.SysUserPageParam;
import net.cocotea.admin.system.param.user.SysUserUpdateParam;
import org.sagacity.sqltoy.model.Page;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

/**
 * @author CoCoTea
 */
@Validated
@RequestMapping("/system/user")
@RestController
public class SysUserController {
    @Resource
    private SysUserService sysUserService;

    @SaCheckRole(value = {"role:super:admin", "role:simple:admin"}, mode = SaMode.OR)
    @PostMapping("/add")
    public ApiResult<?> add(@Valid @RequestBody SysUserAddParam param) throws BusinessException {
        boolean b = sysUserService.add(param);
        return ApiResult.flag(b);
    }

    @SaCheckPermission("system:user:update")
    @PostMapping("/update")
    public ApiResult<?> update(@Valid @RequestBody SysUserUpdateParam param) throws BusinessException {
        boolean b = sysUserService.update(param);
        return ApiResult.flag(b);
    }

    @SaCheckRole(value = {"role:super:admin", "role:simple:admin"}, mode = SaMode.OR)
    @PostMapping("/delete/{id}")
    public ApiResult<?> delete(@PathVariable String id) throws BusinessException {
        boolean b = sysUserService.delete(id);
        return ApiResult.flag(b);
    }

    @SaCheckRole(value = {"role:super:admin", "role:simple:admin"}, mode = SaMode.OR)
    @PostMapping("/deleteBatch")
    public ApiResult<?> deleteBatch(@RequestBody List<String> idList) throws BusinessException {
        boolean b = sysUserService.deleteBatch(idList);
        return ApiResult.flag(b);
    }

    @SaCheckRole(value = {"role:super:admin", "role:simple:admin"}, mode = SaMode.OR)
    @PostMapping("/listByPage")
    public ApiResult<Page<SysUserVO>> listByPage(@Valid @RequestBody SysUserPageParam param) throws BusinessException {
        Page<SysUserVO> list = sysUserService.listByPage(param);
        return ApiResult.ok(list);
    }

    @SaCheckLogin
    @GetMapping("/getDetail")
    public ApiResult<SysUserVO> getDetail() {
        SysUserVO vo = sysUserService.getDetail();
        return ApiResult.ok(vo);
    }

    @PostMapping("/doModifyPassword")
    public ApiResult<?> doModifyPassword(@RequestBody JSONObject obj) throws BusinessException {
        boolean r = sysUserService.doModifyPassword(obj.getString("oldPassword"), obj.getString("newPassword"));
        return ApiResult.ok(r);
    }

}
