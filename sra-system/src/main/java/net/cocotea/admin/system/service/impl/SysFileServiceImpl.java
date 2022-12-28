package net.cocotea.admin.system.service.impl;

import net.cocotea.admin.system.vo.SysFileVO;
import net.cocotea.admin.system.entity.SysFile;
import net.cocotea.admin.system.param.file.SysFileAddParam;
import net.cocotea.admin.system.param.file.SysFilePageParam;
import net.cocotea.admin.system.param.file.SysFileUpdateParam;
import net.cocotea.admin.system.service.ISysFileService;
import org.sagacity.sqltoy.dao.SqlToyLazyDao;
import org.sagacity.sqltoy.model.Page;
import org.springframework.stereotype.Service;
import cn.hutool.core.convert.Convert;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.Resource;
import java.util.List;

/**
 * 系统文件表
 *
 * @author CoCoTea 572315466@qq.com
 * @since 1.2.1 2022-12-28
 */
@Service
public class SysFileServiceImpl implements ISysFileService {

    @Resource
    private SqlToyLazyDao sqlToyLazyDao;

    @Override
    public boolean add(SysFileAddParam param) {
         SysFile sysFile = Convert.convert(SysFile.class, param);
         Object save = sqlToyLazyDao.save(sysFile);
         return save != null;
    }
    
    @Transactional(rollbackFor = Exception.class)
    @Override
    public boolean deleteBatch(List<String> idList) {
         for (String s : idList) {
              delete(s);
         }
         return !idList.isEmpty();
    }
    
    @Override
    public boolean update(SysFileUpdateParam param) {
         SysFile sysFile = Convert.convert(SysFile.class, param);
         Long count = sqlToyLazyDao.update(sysFile);
         return count > 0;
    }
    
    @Override
    public Page<SysFileVO> listByPage(SysFilePageParam param) { 
         Page<SysFileVO> page = sqlToyLazyDao.findPageBySql(param, "system_sysFile_findByPageParam", param.getSysFile());
         return page;
    }
    
    @Override
    public boolean delete(String id) {
         return sqlToyLazyDao.delete(new SysFile().setID(id)) > 0;
    }

}