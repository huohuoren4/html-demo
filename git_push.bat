@echo off
chcp 65001 >nul
::echo 编码改成 UTF-8
echo=
echo 开始从服务器拉取数据...
echo=

@echo on
@git pull
@echo off

echo=
if %errorlevel%==0 (
	echo 拉取数据成功 OK
) else (
	echo 拉取数据失败 Error
	exit /B 
)

echo=
echo 等待3s后，开始向服务器推送数据...
echo=
timeout /t 3 /nobreak > nul

@echo on
@git add . && git commit -m "modified the files" && git push
@echo off

echo=
if %errorlevel%==0 (
	echo 推送数据成功 OK
) else (
	echo 推送数据失败 Error
	exit /B 
)
