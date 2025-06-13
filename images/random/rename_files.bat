@echo off
setlocal enabledelayedexpansion

echo [Start processing files...]

:: 处理01-09的文件
for %%i in (01,02,03,04,05,06,07,08,09) do (
    if exist "%%i.json" (
        echo Renaming: %%i.json to 0%%i.json
        ren "%%i.json" "0%%i.json"
    )
    if exist "%%i.png" (
        echo Renaming: %%i.png to 0%%i.png
        ren "%%i.png" "0%%i.png"
    )
    if exist "%%i.jpg" (
        echo Renaming: %%i.jpg to 0%%i.jpg
        ren "%%i.jpg" "0%%i.jpg"
    )
)

:: 处理1-9的文件（如果还有未处理的）
for %%i in (1,2,3,4,5,6,7,8,9) do (
    if exist "%%i.json" (
        echo Renaming: %%i.json to 00%%i.json
        ren "%%i.json" "00%%i.json"
    )
    if exist "%%i.png" (
        echo Renaming: %%i.png to 00%%i.png
        ren "%%i.png" "00%%i.png"
    )
    if exist "%%i.jpg" (
        echo Renaming: %%i.jpg to 00%%i.jpg
        ren "%%i.jpg" "00%%i.jpg"
    )
)

:: 处理10-99的文件
for /l %%i in (10,1,99) do (
    if exist "%%i.json" (
        echo Renaming: %%i.json to 0%%i.json
        ren "%%i.json" "0%%i.json"
    )
    if exist "%%i.png" (
        echo Renaming: %%i.png to 0%%i.png
        ren "%%i.png" "0%%i.png"
    )
    if exist "%%i.jpg" (
        echo Renaming: %%i.jpg to 0%%i.jpg
        ren "%%i.jpg" "0%%i.jpg"
    )
)

echo.
echo [Renaming completed!]
pause 