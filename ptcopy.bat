@echo off 
xcopy C:\Users\pica8\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\*  f:\photoes 
if ERRORLEVEL 1 echo �ļ�����ʧ�� 
if ERRORLEVEL 0 echo �ɹ������ļ�
cd /d f:\photoes
ren *.* *.jpg
del /f /q f:\photoes\*.
start f:\test.vbs
