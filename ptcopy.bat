@echo off 
xcopy C:\Users\pica8\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\*  f:\photoes 
if ERRORLEVEL 1 echo 文件拷贝失败 
if ERRORLEVEL 0 echo 成功拷贝文件
cd /d f:\photoes
ren *.* *.jpg
del /f /q f:\photoes\*.
start f:\test.vbs
