---
layout: post
title: CentOS 7 下的命令
categories: 测试开发
description: nice
keywords: nice
---

## 配置 yum 为阿里镜像源

备份。

``` shell
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
```

下载。

``` shell
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
```

清除缓存。

``` shell
yum clean all
```

重新生成缓存。

``` shell
yum makecache
```

## 一键安装 Python 的脚本

将下方内容保存为 .sh 文件并运行。

``` shell
yum install -y wget gcc zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make libffi-devel 
cd ~ 
wget https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tar.xz 
tar -xJvf Python-3.8.5.tar.xz 
cd Python-3.8.5 
./configure prefix=/usr/local/python3 
make && make install 
mv /usr/bin/python /usr/bin/python.bak 
rm -rf /usr/bin/python 
ln -s /usr/local/python3/bin/python3 /usr/bin/python 
ln -s /usr/local/python3/bin/pip3  /usr/bin/pip 
cd ~ 
rm -rf Python-3.8.5 Python-3.8.5.tar.xz 
```

修改 Python 版本后可能会出现 yum 无法使用的情况，需要配置让 yum 使用系统默认的 Python 版本。

``` shell
vi /usr/bin/yum
vi /usr/libexec/urlgrabber-ext-down
```

分别将两个文件中第一行的 python 改为 python2，保存即可。

## 一键安装 MySQL 的脚本

将下方内容保存为 .sh 文件并运行。

``` shell
yum install -y wget 
cd ~ 
wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm 
rpm -Uvh mysql80-community-release-el7-3.noarch.rpm 
yum install -y mysql-community-server 
systemctl enable mysqld
systemctl start mysqld
grep 'temporary password' /var/log/mysqld.log
mysql -uroot -p
```

登陆成功后要先修改默认密码才能进行其他操作。

``` sql
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass4!';
```

若是要设置简单密码则需要修改 MySQL 的配置。

``` sql
SET GLOBAL validate_password.policy = 0;
SET GLOBAL validate_password.length = 6;
```

## 防火墙

查看防火墙状态

``` shell
firewall-cmd --state
```

停止 firewall

``` shell
systemctl stop firewalld.service
```

禁止 firewall 开机启动

``` shell
systemctl disable firewalld.service 
```

关闭 selinux

``` shell
vi /etc/selinux/config
修改 SELINUX=disabled
```

## 时间同步服务

安装 ntp

``` shell
yum install -y ntp
```

设置 ntp 服务开机启动

``` shell
systemctl enable ntpd
```
