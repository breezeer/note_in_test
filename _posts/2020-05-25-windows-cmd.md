---
layout: post
title: Windows 命令行使用
categories: 测试开发
description: nice
keywords: nice
---

Windows 命令行的几个常用命令。

## 进入

cmd

## 命令

Ps: Tab 键可以自动补全。

|命令 |说明 |备注 |
|--	|--	|--	|
|x:         |切换盘符| |
|dir        |查看当前目录下所有文件| |
|cd xxx     |进入目录| |
|cd .       |当前目录| |
|cd ..      |返回上级目录| |
|md xxx     |创建目录| |
|rd xxx     |删除目录| |
|del xxx    |删除文件| |
|cls        |清除屏幕| |
|netstat -ano \| findstr "80"  |查找端口占用程序 |只能查到 PID   |
|tasklist \| findstr "1234"   |通过 PID 查找程序  | |
