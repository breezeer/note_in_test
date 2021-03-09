---
layout: post
title: Chrome 开发者工具自带的截图工具的使用
categories: 测试开发
description: nice
keywords: nice
---

某次为了截取整个网页而发现的截图工具，不需要安装第三方插件，可以直接使用。

## 使用

在需要截图的网页打开 Chrome 的开发者工具「F12」，从右上角进入 Run command 功能「Ctrl + Shift + P」，
输入「capture full size screenshot」并按回车，
随后 Chrome 会保存一张图片，即为截取的整个网页的 png 格式的图片。

### capture full size screenshot

截取整个网页，图片可能会很长很长。

### capture area screenshot

选定区域截图，类似微信的截图。

### capture node screenshot

截取当前选中的 Dom 元素。

Ps: 在浏览器显示范围外的部分无法正常显示，保存后为白色空白区域。

### capture screenshot

普通的截图，截取目前浏览器窗口内显示的所有东西，大小为浏览器窗口的大小。
