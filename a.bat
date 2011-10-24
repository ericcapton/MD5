for /f %%i in (pw.txt) do (
echo %%i >> %%i.txt 
md5sum -b %%i.txt >>temp.txt
del %%i.txt
)
for /F "tokens=1 delims= " %%i in (temp.txt) do (echo %%i ) >>pwmd5.txt
del temp.txt
notepad pwmd5.txt
pause