---
layout: post
title: CentOS 7 下的实用配置
categories: 测试开发
description: nice
keywords: nice
---

记录几个 CentOS 下关于环境配置方面的好东西。

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
yum install -y wget gcc zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel make libffi-devel
cd ~
wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tar.xz
tar -xJvf Python-3.9.7.tar.xz
cd Python-3.9.7
./configure prefix=/usr/local/python3
make && make install
mv /usr/bin/python /usr/bin/python.bak
rm -rf /usr/bin/python
ln -s /usr/local/python3/bin/python3 /usr/bin/python
ln -s /usr/local/python3/bin/pip3  /usr/bin/pip
cd ~
rm -rf Python-3.9.7 Python-3.9.7.tar.xz
```

修改 Python 版本后可能会出现 yum 无法使用的情况，需要配置让 yum 使用系统默认的 Python 版本。

``` shell
vi /usr/bin/yum
vi /usr/libexec/urlgrabber-ext-down
```

分别将两个文件中第一行的 python 改为 python2 保存即可。

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

开放防火墙端口

``` shell
firewall-cmd --zone=public --add-port=8080/tcp --permanent
```

加载端口修改配置

``` shell
firewall-cmd --reload
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

## 主机

修改主机名。

``` shell
hostnamectl set-hostname name
```

查看主机名。

``` shell
hostname
```

## Nginx 服务器

安装。

``` shell
yum install nginx
```

查看启动状态。

``` shell
nginx -t
systemctl status nginx.service
```

配置文件位置。

``` shell
/etc/nginx/nginx.conf
/etc/nginx/conf.d/
```

备份配置文件。

``` shell
tar -czvf nginx_$(date +'%F_%H-%M-%S').tar.gz nginx.conf sites-available/ sites-enabled/ nginxconfig.io/ conf.d/
```

NGINXConfig

``` shell
cd /etc/nginx
tar -xzvf nginxconfig.io-doc.breezeeer.buzz,tool.breezeeer.buzz.tar.gz | xargs chmod 0644
openssl dhparam -out /etc/nginx/dhparam.pem 2048
sudo nginx -t && sudo systemctl reload nginx
```

## Flask 服务器

安装 gunicorn。

``` shell
pip install gunicorn
ln -s /usr/local/python3/bin/gunicorn /usr/bin/gunicorn
```

运行时需要在程序主文件「server.py」所在目录添加「run.py」文件。

``` shell
# 并行工作线程数
workers = 4
# 监听内网端口
bind = '0.0.0.0:9105'
# 设置守护进程[关闭连接时,程序仍在运行]
daemon = True
# 设置超时时间,默认为30s
timeout = 30
# 设置访问日志和错误信息日志路径
accesslog = '/var/log/flask/acess.log'
errorlog = '/var/log/flask/error.log'
```

然后在程序主文件「server.py」所在目录运行。

``` shell
gunicorn server:app -c run.py
```

结束进程。

``` shell
ps -ef | grep gunicorn
kill -9 1234
```
