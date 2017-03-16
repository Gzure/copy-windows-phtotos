@echo off 
if not exist d:\photoes md d:\photoes 
del /f /q d:\photoes\*.jpg
xcopy C:\Users\%username%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\*  d:\photoes 
if ERRORLEVEL 1 echo 文件拷贝失败 
if ERRORLEVEL 0 echo 成功拷贝文件
cd /d d:\photoes
ren *.* *.jpg
del /f /q d:\photoes\*.
start d:\test.vbs
