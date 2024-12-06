[TOC]


## 一 部署笔记

### 1.1 安装数据库
+ 安装mysql，pg，redis后，启动
+ mysql中，执行`ruoyi-config.sql`，创建配置数据库
+ mysql中，执行`ruoyi-seata.sql`，创建配置数据库（可选，不建议同库）
> 要只使用pg时，可能需要调整nacos和pg的配置
+ pg中，执行`postgres_ry-cloud.sql`，创建系统数据库
+ pg中，执行`postgres_ry-job.sql`，创建系统数据库（可选，不建议同库）
+ pg中，执行`postgres_ry-workflow.sql`，创建系统数据库（可选，不建议同库）

### 1.2 自建nacos
+ 安装nacos，启动
+ 修改nacos配置，设置数据库信息后(datasource.yml，ruoyi-system.yml)，重启
+ 将项目中的nacos配置文件，复制到nacos中
+ 初步仅修改数据库、redis的配置（租户默认启用了）
    + redis配置在application-common.yml中
    + 数据库配置在datasource.yml中
+ 配置文件调整 mysql改pg
    + ruoyi-system.yml
    + ruoyi-resource.yml
+ 修改ruoyi-common-mybatis的数据库驱动（不该也可启动RuoYiSystemApplication）

### 1.2 启动
+ 修改项目的主pom中的注册中心地址（上一步nacos的访问地址）
+ 确认nacos运行正常，及配置正常后，使用idea中的`Build/Build Project`编译项目（防止一些配置信息可能存在问题）
+ 启动 RuoYiGatewayApplication 服务（可以在`View/Tool Windows/Services`中添加服务）
+ 启动 RuoYiAuthApplication 服务（若报seata未启动，则启动`ruoyi-visual/SeataServerApplication`服务）
+ 启动 RuoYiSystemApplication 服务（若调整数据库类型，可能也需要调整`ruoyi-system.yml`）


## 内置nacos、seate
+ nacos mysql改pg
```properties
# todo 将nacos注入到pg中
spring.sql.init.platform=postgresql
db.url.0=jdbc:postgresql://172.16.46.5:5432/nacos
db.user.0=postgres
db.password.0=postgres
```
+ seata mysql改pg
```properties
store.db.dbType=postgresql
store.db.driverClassName=org.postgresql.Driver
store.db.url=jdbc:postgresql://172.16.46.5:5432/ryjob?useUnicode=true&rewriteBatchedStatements=true&allowPublicKeyRetrieval=true
store.db.user=postgres
store.db.password=postgres
```