---
layout: post
title: 电脑常用软件和必要配置
categories: 备份
description: nice
keywords: nice
---

整理 Win10 系统重装后，常用软件的下载安装，以及一些系统的必要配置。

## 常用软件

### 浏览器

[Google Chrome](https://www.google.cn/intl/zh-CN/chrome/) | 
[Microsoft Edge](https://www.microsoft.com/zh-CN/edge/) | 
[Mozilla Firefox](https://www.mozilla.org/zh-CN/firefox/new/)

- Chrome 下载不需要开代理。
- Edge 也可以使用 Chrome 的插件，复制 Chrome 商店的地址到 Edge 中即可。
- Chrome 隐藏滚动条「78 以上版本无效」：chrome://flags/#overlay-scrollbars
- Chrome 开启多线程下载：chrome://flags/#enable-parallel-downloading

### Microsoft Office

[Office 365](https://www.office.com/) | 
[Office 2013-2019 C2R Install](http://forum.ru-board.com/topic.cgi?forum=2&topic=5693)

- 能用最新版就用最新版，人性化服务做的真的好。
- 上次搞到一个教育版账号「zbeady@nCoV.office.gy」。
    - 说是永久使用的
    - 目前还能用
- 开发者体验账号[管理端](https://portal.office.com/)。
- 开发者体验账号[申请地址](https://developer.microsoft.com/en-us/microsoft-365/profile)。

### Adobe 全家桶

[@vposy](https://www.weibo.com/vposy/)

### 杀毒软件

[火绒安全](https://www.huorong.cn/)

### 解压软件

[7z](https://www.7-zip.org/)

### 编辑器

[HBuilderX](https://www.dcloud.io/hbuilderx.html)

### 音乐播放器

[网易云音乐](https://music.163.com/) | 
[Listen 1](https://listen1.github.io/listen1/)

### 工具

[DirectX 修复工具](https://blog.csdn.net/vbcom/article/details/7245186/) | 
[TeamViewer 远程控制](https://www.teamviewer.cn/cn/) | 
[TreeSize Free 资源浏览器](https://www.jam-software.com/treesize_free/) | 
[Geek Uninstaller 卸载工具](https://geekuninstaller.com/download/) | 
[calibre 电子书管理](https://calibre-ebook.com/download/) | 
[OBS Studio 推流工具](https://obsproject.com/) | 
[AirPlayer 投屏工具](https://pro.itools.cn/airplayer/) | 
[ReNamer 文件批量改名](https://www.den4b.com/products/renamer) | 
[KindleGen 电子书格式修改](https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765211) | 
[Moo0 图片文件时间修改](https://zhs.moo0.com/software/TimeStamp/) | 
[冰点文库下载器](http://www.bingdian001.com/)

### 以下的只有上古宝藏版本

[PotPlayer x64 1.6.59347.zip]() | 
[WinRAR5.31.zip]() | 
[ThunderSpeed1.0.35.366.exe]()

这几个是老早以前下载的，一直存着，已经不知道能在哪里下载的到了，估计哪次丢了就再也找不回来了吧。

## 系统配置

### 字体

- [方正清刻本悦宋](https://www.foundertype.com/index.php/FontInfo/index/id/199.html/)
- [文悦古典明朝体](https://wytype.com/typeface/WenYue-GuDianMingChaoTi)
- [JetBrains Mono](https://www.jetbrains.com/zh-cn/lp/mono/)
- [Cascadia Code](https://github.com/microsoft/cascadia-code/releases/) upup

### 照片查看器

Win10 默认使用「照片」应用查看图片，要换回传统的「照片查看器」需要导入注册表项，请将以下内容保存为「.reg」格式并运行后即可更改。

```
Windows Registry Editor Version 5.00
 ; Change Extension's File Type
 [HKEY_CURRENT_USER\Software\Classes\.jpg]
 @="PhotoViewer.FileAssoc.Tiff"
 ; Change Extension's File Type
 [HKEY_CURRENT_USER\Software\Classes\.jpeg]
 @="PhotoViewer.FileAssoc.Tiff"
 ; Change Extension's File Type
 [HKEY_CURRENT_USER\Software\Classes\.gif]
 @="PhotoViewer.FileAssoc.Tiff"
 ; Change Extension's File Type
 [HKEY_CURRENT_USER\Software\Classes\.png]
 @="PhotoViewer.FileAssoc.Tiff"
 ; Change Extension's File Type
 [HKEY_CURRENT_USER\Software\Classes\.bmp]
 @="PhotoViewer.FileAssoc.Tiff"
 ; Change Extension's File Type
 [HKEY_CURRENT_USER\Software\Classes\.tiff]
 @="PhotoViewer.FileAssoc.Tiff"
 ; Change Extension's File Type
 [HKEY_CURRENT_USER\Software\Classes\.ico]
 @="PhotoViewer.FileAssoc.Tiff"
```

### 虚拟内存

如果 C 盘空间不够用的话可以尝试此设置。

依次打开「设置 > 系统 > 关于 > 高级系统设置 > 性能设置 > 高级 > 虚拟内存更改」，将系统管理的大小改为 D 盘。

### 文件共享

1. 依次打开「控制面板 > 系统和安全 > 管理工具 > 服务」，找到「Function Discovery Resource Publication」服务，将其设置为「自动启动」；
2. 依次打开「控制面板 > 程序 > 程序和功能 > 启用或关闭 Windows 功能」，启用「SMB 1.0」功能。

### 代理

推荐在 [泡芙云](https://paofu.cloud/auth/register?code=Zp6w/) 购买节点。
一般使用 [Shadowsocks](https://github.com/shadowsocks/shadowsocks-windows/releases/) 或
[ShadowsocksR](https://github.com/shadowsocksrr/shadowsocksr-csharp/releases/) 开启代理。

电脑开启代理后 UWP 应用将无法联网，需要下载 [Fiddler](https://www.telerik.com/fiddler) 网络调试工具，在 WinConfig 中选择要启用网络的应用。

## 其他

### Windows XP 激活码

MRX3F-47B9T-2487J-KWKMF-RPWBY

远古时期的一个操作系统的激活码，亲测可用。
