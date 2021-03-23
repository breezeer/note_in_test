---
layout: post
title: Selenium WebDriver 基础内容
categories: 测试开发
description: nice
keywords: nice
---

自动化测试使用的 Selenium WebDriver 工具的一些简单操作。

## 基础操作

[官方手册](https://selenium-python.readthedocs.io/)

使用前需要先配置相应浏览器的驱动程序，将其加入 PATH 路径中，各个浏览器的驱动程序下载链接如下：

1. Chrome: [](https://chromedriver.storage.googleapis.com/index.html)
1. Firefox: [](https://github.com/mozilla/geckodriver/releases)
1. Edge: [](https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/)
1. Safari: 有内置的

先导包

```Python
from selenium import webdriver
```

实例化浏览器

```Python
driver = webdriver.Chrome()
```

打开链接

```Python
driver.get('')
```

查找元素

```Python
driver.find_element_by_id()
driver.find_element_by_name()
driver.find_element_by_xpath()
driver.find_element_by_class_name()
driver.find_element_by_link_text()
driver.find_element_by_partial_link_text()
driver.find_element_by_tag_name()
driver.find_element_by_css_selector()
```

输入内容

```Python
ele.send_keys()
ele.send_keys(u'中文')  # 防止编码错误可以在中文字符串前加「u」
```

清空元素的内容

```Python
ele.clear()
```

点击按钮

```Python
ele.click()
```

获取文本

```Python
ele.text
```

关闭当前页面

```Python
driver.quit()
```

关闭所有窗口

```Python
driver.close()
```

## 特殊情况处理方法

判断元素是否存在

```Python
from selenium.webdriver.support import expected_conditions as EC

…
```

弹出框的处理

```Python
driver.switch_to.alert.accept()  # 确认
driver.switch_to.alert.dismiss()  # 取消
driver.switch_to.alert.text()  # 弹出框内容
driver.switch_to.alert.send_keys()  # 输入（Chrome 无法使用）
```

只读输入框的处理

```Python
# 原理是执行 JS 代码强制改变只读状态
driver.execute_script('document.getElementById('').removeAttribute("readonly");')
```

下拉框的处理

```Python
from selenium.webdriver.support.select import Select

Select(ele).select_by_index()  # 通过下标选择
Select(ele).select_by_value('abc')  # 通过值选择
Select(ele).select_by_visible_text('abc')  # 通过显示的值选择
ele.click() # 多次点击找到相应选项，一般用不了
```

文件上传的处理

```Python
# Windows 下路径用「\\\\」分隔，防止转义
ele.send_keys('路径 + 文件名')
```

获取输入框的值

```Python
ele.get_attribute('value')
```

模拟键盘操作

```Python
from selenium.webdriver.common.keys import Keys

send_keys(Keys.ENTER)  # 按下回车键
send_keys(Keys.TAB)  # 按下 Tab 键
send_keys(Keys.SPACE)  # 按下空格键
send_keys(Kyes.ESCAPE)  # 按下回退键
send_keys(Keys.BACKSPACE)  # 按下删除键
send_keys(Keys.SHIFT)  # 按下 Shift 键
send_keys(Keys.CONTROL)  # 按下 Ctrl 键
send_keys(Keys.CONTROL,'a')  # 组合键全选 Ctrl+A
send_keys(Keys.CONTROL,'c')  # 组合键复制 Ctrl+C
send_keys(Keys.CONTROL,'x')  # 组合键剪切 Ctrl+X
send_keys(Keys.CONTROL,'v')  # 组合键粘贴 Ctrl+V
```

强制等待

```Python
time.sleep()
```

iframe 的处理

```Python
driver.switch_to.frame(ele)  # 进入
driver.switch_to.default_content()  # 退出
```
