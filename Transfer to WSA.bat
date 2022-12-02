echo
adb connect 127.0.0.1:58526
adb -s 127.0.0.1:58526 push %* /sdcard/Download/
pause
