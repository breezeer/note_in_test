# 获取当前时间，用于设置 commit 信息。
now=$(date "+%Y/%m/%d %H:%M:%S")
echo $now

# 手动填写 commit 信息。
read -p  "Please input commit comments:" msg

# 执行 git 命令。
echo Start.
git add -A && git commit -m "「$now」$msg" && git pull && git push
echo OK!

# 保留窗口。
read
