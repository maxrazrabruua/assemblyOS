@echo off
echo Comply...
echo File: bootloader
"C:\Program Files\NASM\nasm.exe" -f bin bootloader.asm -o bootloader.img
echo Job: file
copy /b bootloader.img AOS.img
echo Comply is finish
pause
