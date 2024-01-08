### 更新日志


#### v1.3.3
1. 修复退出登录参数Undefined问题


#### v1.3.2
1. 数据库脚本任务调度主表补充字段CONCURRENT_EXEC
2. 修复WebMvcConfig配置类中时间格式化为12小时制问题
3. 补充项目变更文档


#### v1.3.1
1. 优化ApiResult类，不返回空字符串
2. 接口访问限制BUG修复
3. 移除IRedisService的set方法


#### v1.3.0
1. 优化树形结构生成工具
2. 变更跳转satoken官网地址
3. 前端核心依赖升级到最新
4. 修复loginInfo的nickname为空问题
5. 登录接口增加事务控制
6. 修复表单显示错误问题


#### v1.2.9
1. 只保持一个子菜单的展开；
2. 用户接口权限优化；


#### v1.2.8
1. 修复用户中心菜单跳转失效问题
2. 修复日志打印意外错误异常堆栈信息
3. 移除DataBaseTypeConstant和JavaTypeConstant
4. 指定打包编码，解决maven打包出现的警告
5. 各个模块命名统一规范
6. 修复任务调度执行结果查询无效
7. 修复退出登录时主题未回复初始状态
8. 全局更新数据配置未登录策略判断
9. 优化用户密码修改
10. maven依赖升级sqltoy到5.2.54
11. 添加依赖sqltoy-plus
12. 调度任务添加和更新时加入Cron表达式校验
13. 移除注解控制任务是否并发执行，使用字段控制并发执行
14. 优化任务初始化与执行流程 (1) 任务参数将在初始化时被解析 (2) 类模式与函数模式分类封装 (3) 任务参数支持以数组类型JSON来映射方法内的参数
15. 修复任务调度添加/更新时查询任务信息未带出是否允许并发执行字段问题


#### v1.2.7
1. 优化退出登录，会话失效的情况直接返回退出登录成功；
2. 优化登录时服务未启动导致一直loading；
3. 更正某些不规范的VO命名；
4. 优化表单管理组件，固定头部和底部；
5. 更改vue弃用的v-deep方法，改成:deep；
6. 优化登录功能“记住我”模式；
7. 移除代码生成器；


#### v1.2.6
1. 修复菜单根菜单无法激活bug；
2. 指定tinyInt1isBit=false避免返回的tinyint(1)是Boolean类型；
3. 修复新增用户时角色ID参数拦截异常；
4. 用户路由拦截优化；
5. 修复登录信息缓存BUG；
6. jdbc url备注时区信息；
7. 新增常用工具类；
8. Is枚举名称更改；
9. 删除命名转换工具类；


#### v1.2.5
1. readme添加支持者
2. 优化管理页面代码模板
3. 优化调度任务的实例创建过程，优先考虑是否存在于Spring容器，无法找到相应的实例再通过反射进行创建
4. 主题新增重置功能
5. 统一系统管理模块表单样式


#### v1.2.4
1. 新增主题切换功能
2. 修复弹窗异常
3. 优化Admin头部UI
4. 升级elementui到v2.2.13
5. 升级hutool到v5.8.12


#### v1.2.3
1. 优化系统角色(增加多角色)
2. 优化更改用户密码为非必填项
3. 修复编辑用户title显示异常问题
4. 优化用户管理页UI
5. 优化前端项目打包策略


#### v1.2.2
1. 修复maku-generator-boot-starter打包异常;
2. 优化头像上传;
3. 修复手动执行任务日志丢失BUG;
4. 优化任务管理页面;


#### v1.2.1
1. 优化UI界面
2. 新增文件管理功能
3. 新增代码生成器插件
4. 更改代码结构


#### v1.1.3
1.新增VO实体类代码生成；
2.新增版本号管理功能；


#### v1.1.2
1. 修复文件上传XSS安全漏洞.
2. 增加图片上传格式限制.
3. 升级springboot到2.7.4版本
4. 升级mysql连接器到8.0.30版本


#### v1.1.0
1. 修复已知BUG.
2. 新增CMS模块.
3. 新增任务调度模块.
4. 更改GAV,优化UI界面.
5. 移除swagger.


#### v1.0.3
1. 修复已知BUG.
2. 新增CMS模块.


#### v1.0.2
1. 修复已知BUG & 优化UI.
2. 新增字典表维护.
3. 补充权限缓存以及角色鉴权.
4. 后台系统新增实体类代码生成器.
5. 增加操作日志功能.


#### v1.0.1
- sss-rbac-admin第一版发布