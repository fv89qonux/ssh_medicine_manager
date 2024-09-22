## 本项目实现的最终作用是基于SSH药品管理信息系统
## 分为1个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 查看药品
 - 管理员登录
 - 管理员管理
 - 类别统计
 - 进货管理
 - 选购药品
 - 销售排行
 - 销售明细
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_medicine_manager

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [tb_category](#tb_category) |  |
| [tb_medicine](#tb_medicine) |  |
| [tb_selldetail](#tb_selldetail) |  |
| [tb_user](#tb_user) |  |
| [test](#test) |  |

**表名：** <a id="tb_category">tb_category</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 255 |   0    |    N     |  N   |       | 名字  |
|  3   | description |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    |   |
|  4   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="tb_medicine">tb_medicine</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | medNo |   varchar   | 255 |   0    |    N     |  N   |       |   |
|  3   | name |   varchar   | 255 |   0    |    N     |  N   |       | 名字  |
|  4   | factoryAdd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | description |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    |   |
|  6   | price |   double   | 23 |   0    |    N     |  N   |       | 价格  |
|  7   | medCount |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | reqCount |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  9   | photoPath |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | categoryId |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="tb_selldetail">tb_selldetail</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | sellName |   varchar   | 255 |   0    |    N     |  N   |       |   |
|  3   | sellPrice |   double   | 23 |   0    |    N     |  N   |       |   |
|  4   | sellCount |   int   | 10 |   0    |    N     |  N   |       |   |
|  5   | sellTime |   datetime   | 19 |   0    |    N     |  N   |       |   |
|  6   | medid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  7   | userid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |

**表名：** <a id="tb_user">tb_user</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    N     |  N   |       | 用户名  |
|  3   | password |   varchar   | 255 |   0    |    N     |  N   |       | 密码  |
|  4   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="test">test</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | a |   char   | 1 |   0    |    Y     |  N   |   NULL    |   |

