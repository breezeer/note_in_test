---
layout: post
title: 云服务器自动签卡
categories: 备份
description: Windows
keywords: Windows
---

无

## 脚本

~/auto_checkin.py

``` Python
import random
import time

import requests

time.sleep(random.randint(1, 580))  # 随机时间

url_login = 'http://url/index.php?a=check&m=login&d=&ajaxbool=true'
url_pass = 'http://url/api.php?m=kaoqin&a=adddkjl'
data_login = {
    'rempass': '1',
    'jmpass': 'true',
    'device': time.time(),
    'ltype': 0,
    'adminuser': 'abc',  # 自己从浏览器抓包获取加密后的用户名
    'adminpass': 'abc'  # 自己从浏览器抓包获取加密后的密码
}

session = requests.session()
session.post(url_login, data_login)
res = session.get(url_pass)

print(res.text)

```

## 定时执行以上脚本

使用 crontab 工具创建定时任务。

- crontab -l：查看当前设定的定时任务。
- crontab -r：移除当前所有的定时任务。
- crontab -e：编辑定时任务。

定时任务的格式：分、时、日、月、星期、命令

```
50 8 * * 1-5 python ~/auto_checkin.py
30 18 * * 1-5 python ~/auto_checkin.py
```
