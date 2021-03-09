---
layout: post
title: Python 中的 Faker 工具
categories: Python
description: nice
keywords: nice
---

用于脚本中生成假数据。

## 官方文档

[Faker](https://faker.readthedocs.io/en/master/locales/zh_CN.html)

工具本身支持各种语言，下面总结一下常用的方法。

## 初始化代码

``` Python
from faker import Faker

fake = Faker("zh_CN")  # 设置语言
```

## 常用方法

### 地址

``` Python
fake.address()  # 完整地址
fake.province()  # 省
fake.city()  # 市
fake.street_address()  # 短地址
fake.postcode()  # 邮编
```

### 颜色

``` Python
fake.color_name()  # 颜色
```

### 时间

``` Python
fake.date(pattern='%Y-%m-%d')  # 日期
fake.time(pattern='%H:%M:%S')  # 时间
fake.date_this_year()  # 随机今天之前今年的某一天
fake.date_this_year()  # 随机的生日
fake.date_between_dates(date_start=date(2010, 1, 1), date_end=None)  # 随机时间段中的某一天，需要引入 datetime.datetime
```

### 网络

``` Python
fake.user_name()  # 用户名
fake.email()  # 邮箱
fake.url()  # 网址
fake.mac_address()  # MAC
fake.uuid4()  # UUID
```

### 个人信息

``` Python
fake.name()  # 姓名
fake.name_male()  # 姓名
fake.name_female()  # 姓名
fake.phone_number()  # 手机号
fake.ssn()  # 身份证号
fake.job()  # 职位
fake.company()  # 公司
fake.profile()  # 完整个人信息
fake.simple_profile()  # 简要个人信息
```

### 杂项

``` Python
fake.word()  # 单词
fake.text(max_nb_chars=200)  # 一段文字
fake.pyint(min_value=1000, max_value=9999, step=2)  # 生成一个随机数
fake.pyfloat(left_digits=None, right_digits=2, positive=True, min_value=50, max_value=240)  # 生成一个随机小数
fake.pylist(nb_elements=30)  # 生成一个列表
fake.pydict(nb_elements=30)  # 生成一个字典
```
