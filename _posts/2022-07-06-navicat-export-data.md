---
layout: post
title: Navicat 工具生成数据字典
categories: 数据库
description: 备份
keywords: Navicat
---

Navicat 工具生成数据字典

新建一个查询

``` sql
SELECT
	t.TABLE_NAME AS 表名,
	t.COLUMN_NAME AS 字段名,
	t.COLUMN_TYPE AS 数据类型,
CASE
		IFNULL( t.COLUMN_DEFAULT, 'Null' ) 
		WHEN '' THEN
		'空字符串' 
		WHEN 'Null' THEN
		'NULL' ELSE t.COLUMN_DEFAULT 
	END AS 默认值,
CASE
		t.IS_NULLABLE 
		WHEN 'YES' THEN
		'是' ELSE '否' 
	END AS 是否允许为空,
	t.COLUMN_COMMENT AS 字段说明 
FROM
	information_schema.COLUMNS t 
WHERE
	t.TABLE_SCHEMA = '这里填写库名';
```

查询到结果后进行导出

![](https://tva1.sinaimg.cn/large/e6c9d24ely1h3x5j3lvxrj20js0fz3zi.jpg)

选择格式进行导出

![](https://tva1.sinaimg.cn/large/e6c9d24ely1h3x5ly88wij20k00evaaj.jpg)

导出结果如下

![](https://tva1.sinaimg.cn/large/e6c9d24ely1h3x5oq3vrvj217j0bsjst.jpg)

