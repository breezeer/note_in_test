---
layout: post
title: 电脑常用软件和必要配置
categories: 备份
description: nice
keywords: nice
---

整理 Win 10 系统重装后，常用软件的下载安装，以及一些系统的必要配置。

## 常用软件

### 浏览器

[Google Chrome](https://www.google.cn/intl/zh-CN/chrome/) | 
[Microsoft Edge](https://www.microsoft.com/zh-CN/edge/) | 
[Mozilla Firefox](https://www.mozilla.org/zh-CN/firefox/new/)

- 各个浏览器均可以登入账号同步数据，保存的密码啥的都在那里面。
- Chrome 下载不用翻墙，但是同步需要。
- Edge 也可以使用 Chrome 的插件。
- Chrome 隐藏滚动条「78 以上版本无效」：chrome://flags/#overlay-scrollbars
- Chrome 开启多线程下载：chrome://flags/#enable-parallel-downloading
- Chrome 关闭插件盒子：chrome://flags/#extensions-toolbar-menu

### Microsoft Office

[Office 365](https://www.office.com/) | 
[Office 2013-2019 C2R Install](http://forum.ru-board.com/topic.cgi?forum=2&topic=5693)

- 能用最新版就用最新版，人性化服务做的真的好。
- 上次搞到一个教育版账号「zbeady@nCoV.office.gy」。
- 上次还搞了一个企业版体验账号「zbeady@guodoudou2.onmicrosoft.com」，可以登录[管理端](https://portal.office.com/)分配账号。已经设置了可以自动续期的脚本，但是不知道靠谱不靠谱。
- 企业版体验账号[申请地址](https://developer.microsoft.com/en-us/microsoft-365/profile)。

### Adobe 全家桶

[@vposy](https://www.weibo.com/vposy/)

### 杀毒软件

[火绒安全](https://www.huorong.cn/)

### 解压软件

[7z](https://www.7-zip.org/)

### 编辑器

[HBuilderX](https://www.dcloud.io/hbuilderx.html)

- 支持各种文件查看编辑。
- 最好用的 Markdown 编辑器没有之一。

### 音乐播放器

[网易云音乐](https://music.163.com/) | 
[Listen 1](https://listen1.github.io/listen1/)

- Apple Music ~~是真不好用~~，作为纯粹听歌的还不错。
- 网易云音乐是真的贵。

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

各种小工具呢。

### 以下的只有上古宝藏版本

[PotPlayer x64 1.6.59347.zip]() | 
[WinRAR5.31.zip]() | 
[ThunderSpeed1.0.35.366.exe]()

这几个是老早以前下载的，一直存着，已经不知道能在哪里下载的到了，估计哪次丢了就再也找不回来了吧。

## 系统配置

### 字体

- [方正清刻本悦宋](https://www.foundertype.com/index.php/FontInfo/index/id/199.html/)
- [文悦古典明朝体](https://wytype.com/typeface/WenYue-GuDianMingChaoTi)
- [Yahei Monaco Hybrid](https://github.com/maxsky/Yahei-Monaco-Hybrid-Font/releases/)
- [JetBrains Mono](https://www.jetbrains.com/zh-cn/lp/mono/)
- [Cascadia Code](https://github.com/microsoft/cascadia-code/releases/) upup

其实每个地方的默认字体都挺不错的。

### 照片查看器

Win 10 默认使用「照片」应用查看图片，要换回传统的「照片查看器」需要导入注册表项，请将下面的内容保存为「.reg」格式并运行后即可更改。

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

如果 C 盘空间不是很多的话…

依次打开「此电脑 > 属性 > 高级系统设置 > 性能设置 > 高级 > 虚拟内存更改」，将系统管理的大小改为 D 盘。

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

远古时期的一个操作系统的激活码，奇怪的是它一直都能用，也不知道哪天会失效。
