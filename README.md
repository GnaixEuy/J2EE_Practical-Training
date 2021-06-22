### **本次项目正式开始，目前readme文档仅作为开发记录使用，等待后期更新**

---
#### 开发环境

> JDK:
>> JetBrains Runtime OpenJDK 11.0.5 update
>
>Database System:
>> MySQL Community Server 5.7.33
>
> Application Server
>> apache-tomcat-8.5.66
>
> IDE
>> IntelliJ IDEA 2021.1.2 (Ultimate Edition)
---

#### 代码规范标注

> 阿里巴巴Java开发手册(终极版)
>
> Alibaba Java Coding Guidelines
---

#### 项目开发记录

---
2021年6月15日

* 建立项目基本结构
* 完成了开发环境的配置
* 构建了基本的DBUtil
* 使用监听器完成了服务器初始化获取多个Connection以提升速度
* 初步设计了数据库表结构
---
2021年6月16日

* 修正了数据库设计
* 添加了字符集过滤器
* 添加了身份过滤器
* 更新了DBUtil中的方法
* 初步设计了AdminBean //管理员实体
* 初步设计了UserBean //用户实体
* 初步设计了OrderBean //订单实体
* 初步设计了AdminDao接口
* 初步设计了UserDao接口

---
2021年 6月17日

* 被JS和配置文件问题疯狂折磨

---
2021年 6月18日

* 更新了大量会员模块操作
* 修复了后台UI板块的大部分JS问题
* 修复了大量不合理样式
* 重构管理员修改界面仍然未完成，但是我要睡觉了T_T

---
2021年 6月21日 更新了许多功能 修复了初始页面的jqurey导入异常 更新了编辑商品功能