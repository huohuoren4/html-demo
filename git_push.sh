#!/bin/bash

git pull

echo 
if (( $? == 0 ));then
	echo -e  "\033[32m数据拉取成功(^_^)\033[0m"
else 
	echo -e  "\033[31m数据拉取失败(~_~)\033[0m"
	exit
fi

echo 
echo "等待3s后开始推送数据"
sleep 3
echo 
git add . && git commit -m "modified files" && git push

echo 
if (( $? == 0 ));then
	echo -e  "\033[32m数据推送成功(^_^)\033[0m"
else 
	echo -e  "\033[31m数据推送失败(~_~)\033[0m"
	exit
fi
