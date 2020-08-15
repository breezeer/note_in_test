---
layout: post
title: iQOO 停用内置应用
categories: 备份
description: nice
keywords: nice
---

不想看到系统中的一些垃圾应用，又不敢强制卸载，只能停用它们，但是过段时间又会一个一个冒出来。

## 需要用到的工具

使用 adb 工具。

- 停用：

    ``` shell
    adb shell pm disable-user xxx
    ```

- 启用：

    ``` shell
    adb shell pm enable xxx
    ```

## 想要禁用的应用

|包名		|应用名|
|-- |-- |
|游戏		|com.vivo.game|
|电子书		|com.chaozh.iReader|
|语音		|com.vivo.agent|
|浏览器		|com.vivo.browser|
|互传		|com.vivo.easyshare|
|使用技巧	|com.vivo.Tips|
|官网		|com.vivo.space|
|钱包		|com.vivo.wallet|
|云服务		|com.bbk.cloud|

## 命令

可以将下方内容保存为一个「.bat」格式的文件，运行时可以实现一键清理的效果。

``` shell
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
