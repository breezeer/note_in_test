---
layout: post
title: 测试环境配置
categories: 测试开发
description: Windows
keywords: Windows
---

整理 Win 10 系统中测试环境的配置。

# 测试环境配置

## 环境变量

一步到位，依次打开「此电脑 -> 属性 -> 高级系统设置 -> 环境变量 -> 用户变量」，加入下列内容。

```
Java_Home:
	C:\Program Files\Java\jdk-13
MySQL_Home:
	D:\Develop\MySQL8
Android_Home:
	D:\Develop\Android
Path:
	%Java_Home%\bin
	%MySQL_Home%\bin
	%Android_Home%\platform-tools
```

## 通用

### 抓包工具

[Fiddler](https://www.telerik.com/fiddler/) | 
[Charles Proxy](https://www.charlesproxy.com/)

### 数据库工具

[Navicat Premium](https://www.navicat.com.cn/products/)

#### 激活「已失效」

1. 下载 [Navicat Keygen](https://github.com/DoubleLabyrinth/navicat-keygen/releases/)
2. 命令行：navicat-patcher.exe "C:\Program Files\PremiumSoft\Navicat Premium 12"
3. 命令行：navicat-keygen.exe -text .\RegPrivateKey.pem
4. 断开网络，并打开 Navicat，找到注册窗口，并填入 keygen 给出的序列号，然后点击激活按钮
5. 在手动激活窗口会得到一个请求码，复制它并把它粘贴到 keygen 里
6. 复制激活码，粘贴到 Navicat 的手动激活窗口

#### 激活

Navicat Keygen Patch v5.6.0 DFoX

### 数据库

[MySQL](https://dev.mysql.com/downloads/)

#### 配置 my.ini 文件

```
[mysql]
default-character-set=utf8
[mysqld]
port = 3306
basedir=D:\\Develop\MySQL8
datadir=D:\\Develop\MySQL8\SQLData
max_connections=20
character-set-server=utf8
default-storage-engine=INNODB
default_authentication_plugin=mysql_native_password
```

#### 配置服务

1. bin 目录下执行 mysqld --initialize --console 初始化
2. mysqld --install mysql8 安装服务
3. net start mysql8 开启
4. net stop mysql8 关闭

#### 配置远程访问

1. 登录数据库：mysql -u root -p
2. 修改密码：ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456';
3. 进入数据库：use mysql;
4. 创建用户：CREATE USER 'zbeady'@'%' IDENTIFIED WITH mysql_native_password BY '123456';
5. 修改权限：GRANT ALL PRIVILEGES ON *.* TO 'zbeady'@'%';

### 虚拟机

[VMware Workstation Player](https://www.vmware.com/cn/products/workstation-player/workstation-player-evaluation.html/) | 
[CentOS](https://mirrors.aliyun.com/centos/) | 
[Xshell & Xftp](https://www.netsarang.com/zh/free-for-home-school/)

## Java 环境

### JDK

[JDK 8](https://www.oracle.com/technetwork/java/javase/downloads/index.html)

### Tomcat

[Tomcat 9](http://tomcat.apache.org/)

#### 配置服务

1. 在 bin 目录下执行 service install tomcat9 安装服务
2. net start tomcat9 开启
3. net stop tomcat9 关闭

#### tomcat-users 文件添加用户

```
<role rolename="manager-gui"/> 
<role rolename="admin-gui"/> 
<user username="zbeady" password="123456" roles="manager-gui,admin-gui"/>
```

## 产品经理相关

### 原型图

[Axure RP 9](https://www.axure.com/download/) | 
[Axure RP 9 汉化包](http://www.chanpinban.com/downloads/)
