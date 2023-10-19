
@echo off

REM Получаем количество секунд из аргументов командной строки 
set seconds=%1

REM Создаем файл, в который будет записаны запущенные процессы
tasklist > process_list.txt

REM Ждем указанное количество секунд
ping 127.0.0.1 -n %seconds% > nul

REM Создаем второй файл, в который будет записано количество запущенных процессов
tasklist /FO csv | find /c /v "" > process_count.txt
