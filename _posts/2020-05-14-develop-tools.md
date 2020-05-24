---
layout: post
title: 基础测试环境配置
categories: 测试开发
description: Windows
keywords: Windows
---

记录功能测试中需要的基本的测试环境的配置。

## 环境变量

一步到位，依次打开「此电脑 > 属性 > 高级系统设置 > 环境变量 > 用户变量」，加入下列内容。

```
Java_Home:
	C:\Program Files\Java\jdk
MySQL_Home:
	D:\Develop\MySQL
Android_Home:
	D:\Develop\android_sdk
Path:
	%Java_Home%\bin
	%MySQL_Home%\bin
	%Android_Home%\platform-tools
```

## 通用

### 抓包工具

[Fiddler](https://www.telerik.com/fiddler) | 
[Charles Proxy](https://www.charlesproxy.com)

两个软件功能都很强大，日常都只是用到一些基本的功能。

### 数据库工具

[Navicat Premium](https://www.navicat.com.cn/products/)

激活「已失效」

1. 下载 [Navicat Keygen](https://github.com/DoubleLabyrinth/navicat-keygen/releases/)
2. 命令行：navicat-patcher.exe "C:\Program Files\PremiumSoft\Navicat Premium 12"
3. 命令行：navicat-keygen.exe -text .\RegPrivateKey.pem
4. 断开网络，并打开 Navicat，找到注册窗口，并填入 keygen 给出的序列号，然后点击激活按钮
5. 在手动激活窗口会得到一个请求码，复制它并把它粘贴到 keygen 里
6. 复制激活码，粘贴到 Navicat 的手动激活窗口

激活

- [Navicat Keygen Patch v5.6.0 DFoX]()

### 数据库

[MySQL Community Server](https://dev.mysql.com/downloads/mysql/)

在解压后的目录下创建「my.ini」文件，内容如下。

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

初始化数据库，并配置服务，初始密码会在初始化时显示在 cmd 的输出内容中。

1. 进入 bin 目录下打开 cmd，执行 mysqld --initialize --console 进行初始化
2. 执行 mysqld --install mysql8 安装服务
3. 执行 net start mysql8 开启服务
4. 执行 net stop mysql8 关闭服务

配置数据库远程访问权限，远程访问需要使用非「root」用户。

1. 登录数据库：mysql -u root -p
2. 修改密码：ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456';
3. 进入数据库：use mysql;
4. 创建用户：CREATE USER 'testuser'@'%' IDENTIFIED WITH mysql_native_password BY '123456';
5. 修改权限：GRANT ALL PRIVILEGES ON *.* TO 'testuser'@'%';

### 虚拟机

如果需要的话。

[VMware Workstation Player](https://www.vmware.com/cn/products/workstation-player.html) | 
[CentOS](https://mirrors.aliyun.com/centos/) | 
[Xshell & Xftp](https://www.netsarang.com/zh/free-for-home-school/)

## Java 环境

### JDK

[Oracle JDK](https://www.oracle.com/java/technologies/javase-downloads.html)

### Tomcat

[Apache Tomcat](http://tomcat.apache.org)

配置服务。

1. 进入 bin 目录下打开 cmd，执行 service install tomcat9 安装服务
2. 执行 net start tomcat9 开启服务
3. 执行 net stop tomcat9 关闭服务

可以在「tomcat-users」文件中添加其他用户。

```
<role rolename="manager-gui"/> 
<role rolename="admin-gui"/> 
<user username="testuser" password="123456" roles="manager-gui,admin-gui"/>
```

#### 部署项目

将项目「.war」包文件放入「webapps」文件夹中，启动服务即可。

## PHP 环境

### XAMPP

[XAMPP](https://www.apachefriends.org/zh_cn/index.html)，其中包含了 MySQL 和 Tomcat，但是都是较老的版本。

#### 部署项目

将项目文件解压后放入「htdocs」文件夹中，启动服务即可。

## Android 环境

### adb

[Android 调试桥 (adb)](https://developer.android.com/studio/command-line/adb)

有很多强大功能。

推荐一个需要投屏工具：[Scrcpy](https://github.com/Genymobile/scrcpy)

## 产品经理相关

### 原型图

[Axure RP](https://www.axure.com/download) | 
[Axure RP 汉化包](http://www.chanpinban.com/downloads/)

激活：

- macwk.com
- WnXKElaO7BLA5KKZh9LpNLl/DsU62fHnnazJt5Gs4FzuOxkwgR3bYQNiSWyk7iVT
- macwk.com
- Cpvm3Fe/TOnZY2agskB3AxZe8a16QrW+NL2CUY9v9F+jyaOkv2suqshcVC81ZFha
- macwk.com
- eZZPVm1LL6KcZ6XpOLFfGezpdl9c49EAdOYdoEsNSA2TJGHu7tA5Voyyj+h1nPLo
