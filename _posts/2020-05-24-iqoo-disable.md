---
layout: post
title: iQOO 停用内置应用
categories: 备份
description: Windows
keywords: Windows
---

不想看到系统中的一些垃圾应用，又不敢强制卸载，只能停用它们。

## 基础

使用 adb 命令。

- 停用：adb shell pm disable-user xxx
- 启用：adb shell pm enable xxx

## 应用

- com.vivo.game 游戏
- com.chaozh.iReader 电子书
- com.vivo.agent 语音
- com.vivo.browser 浏览器
- com.vivo.easyshare 互传
- com.vivo.Tips 使用技巧
- com.vivo.space 官网
- com.vivo.wallet 钱包
- com.bbk.cloud 云服务

## 命令

可以将下方内容保存为一个「.bat」格式的文件，运行时可以实现一键清理的效果。

```
adb shell pm disable-user com.vivo.game
adb shell pm disable-user com.chaozh.iReader
adb shell pm disable-user com.vivo.agent
adb shell pm disable-user com.vivo.browser
adb shell pm disable-user com.vivo.easyshare
adb shell pm disable-user com.vivo.Tips
adb shell pm disable-user com.vivo.space
adb shell pm disable-user com.vivo.wallet
adb shell pm disable-user com.bbk.cloud
```
