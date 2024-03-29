package net.cocotea.admin.schedule.core.service;

import net.cocotea.admin.schedule.core.entity.ScheduleJob;
import net.cocotea.admin.schedule.core.param.ScheduleJobAddParam;
import net.cocotea.admin.schedule.core.param.ScheduleJobPageParam;
import net.cocotea.admin.schedule.core.param.ScheduleJobUpdateParam;
import net.cocotea.admin.schedule.core.vo.ScheduleJobVO;
import net.cocotea.admin.common.model.BusinessException;
import net.cocotea.admin.common.service.IBaseService;
import org.sagacity.sqltoy.model.Page;

import java.util.List;

/**
 * @author Guo wentao
 * @date 2022/8/8
 */
public interface ScheduleJobService extends IBaseService<Page<ScheduleJobVO>, ScheduleJobPageParam, ScheduleJobAddParam, ScheduleJobUpdateParam> {

    /**
     * 查询所有已启用的计划任务
     *
     * @return 已启用的计划任务列表
     */
    List<ScheduleJob> getAllActiveScheduleJob() throws BusinessException;

    /**
     * 手动执行任务
     *
     * @param id 任务ID
     * @return 任务执行UUID
     */
    String execute(String id) throws BusinessException;

    /**
     * 通过UUID获取手动执行结果
     *
     * @param uuid 任务执行UUID
     * @return 任务执行结果
     */
    boolean getExecuteProgress(String uuid) throws BusinessException;
}
