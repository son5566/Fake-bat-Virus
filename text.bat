@echo off
title Server Loader v2.0
color 0a

:: Vòng lặp làm dấu chấm chạy 3 lần
set count=0
:loading
cls
echo Dang ket noi den Server mien tay .
timeout /t 1 >nul
cls
echo Dang ket noi den Server mien tay ..
timeout /t 1 >nul
cls
echo Dang ket noi den Server mien tay ...
timeout /t 1 >nul
set /a count=%count%+1
if %count% lss 3 goto loading

:: Hộp thoại thông báo
msg * "SERVER LOADED SUCCESSFULLY! VIRUS Kim Loi ACTIVATED!"

:: Hù dọa thêm bằng cách liệt kê file hệ thống (vô hại)
echo Truy cap vao o dia C:...
dir /s /b C:\Windows\System32 | findstr /i ".dll"
timeout /t 2
title SYSTEM HACKING...
color 0a

:matrix
:: Tạo một dòng ngẫu nhiên gồm các số 0 và 1
setlocal enabledelayedexpansion
set "line="
for /l %%i in (1,1,40) do (
    set /a "bit=!random! %% 2"
    set "line=!line!!bit!"
)

echo %line%%line%%line%
timeout /t 0 >nul

:: Kiểm tra nếu bị tắt thì có thể dùng chiêu mở lại (tùy chọn)
:: start "" "%~f0" 

:: Tạo hiệu ứng "App is not responding" khi nhấn phím
if %random% LSS 500 (
    msg * "APP IS NOT RESPONDING: Error 0x!random!"
)

goto matrix
