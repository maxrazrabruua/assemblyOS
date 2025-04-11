@echo off
echo Comply...
echo File: bootloader
"C:\Program Files\NASM\nasm.exe" -f bin bootloader.asm -o bootloader.img
echo File: system
"C:\Program Files\NASM\nasm.exe" -f bin system.asm -o system.bin
echo Job: bootloader + system
copy /b bootloader.img + system.bin AOS.img
echo Comply is finish
pause
