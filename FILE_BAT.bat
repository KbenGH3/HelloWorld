REM 历遍某个文件夹
set var=0

REM 显示总文件数set后面要带/a 才能进行数学计算
For /r D:\TEST\FILE\ %%i in (*.txt) do set /a var = var +1
echo 总文件数：%var% > D:\TEST\FILE_BAT.log

REM 显示各文件名
SETLOCAL ENABLEDELAYEDEXPANSION 
set s=hello
For /r D:\TEST\FILE\ %%i in (*.txt) do (
set s=%%i
echo !s:~13,9! >> D:\TEST\FILE_BAT.log
REM 下面的显示方式更有效率
echo %%~nxi >> D:\TEST\FILE_BAT.log
)
REM 异常时才通过暂停进行调查
pause