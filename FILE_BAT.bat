REM ����ĳ���ļ���
set var=0

REM ��ʾ���ļ���set����Ҫ��/a ���ܽ�����ѧ����
For /r D:\TEST\FILE\ %%i in (*.txt) do set /a var = var +1
echo ���ļ�����%var% > D:\TEST\FILE_BAT.log

REM ��ʾ���ļ���
SETLOCAL ENABLEDELAYEDEXPANSION 
set s=hello
For /r D:\TEST\FILE\ %%i in (*.txt) do (
set s=%%i
echo !s:~13,9! >> D:\TEST\FILE_BAT.log
REM �������ʾ��ʽ����Ч��
echo %%~nxi >> D:\TEST\FILE_BAT.log
)
REM �쳣ʱ��ͨ����ͣ���е���
pause