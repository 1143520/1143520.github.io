@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: 提示用户输入前缀
set /p "prefix=请输入文件名前缀（直接回车则只用数字命名）: "

:: 提示用户输入起始数字
set /p "start_num=请输入起始数字（直接回车默认从01开始）: "

:: 提示用户是否需要统一后缀
set /p "change_ext=是否需要统一修改后缀？(Y/N，直接回车默认N): "
if /i "!change_ext!"=="Y" (
    set /p "new_ext=请输入新的后缀名（例如：jpg）: "
    :: 确保后缀名前有点
    if not "!new_ext:~0,1!"=="." set "new_ext=.!new_ext!"
)

:: 如果用户没有输入起始数字，设置默认值为1
if "!start_num!"=="" (
    set "start_num=1"
    set "num_length=2"
) else (
    :: 移除开头的0以获取实际数值
    set "actual_num=!start_num!"
    for /f "tokens=* delims=0" %%a in ("!start_num!") do set "actual_num=%%a"
    if "!actual_num!"=="" set "actual_num=0"
    
    :: 计算原始输入的长度作为格式长度
    set "num_length=0"
    set "temp_str=!start_num!"
    :strlen_loop
    if not "!temp_str!"=="" (
        set /a num_length+=1
        set "temp_str=!temp_str:~1!"
        goto strlen_loop
    )
    
    :: 设置实际的起始数字
    set "start_num=!actual_num!"
)

:: 设置图片所在文件夹路径（默认为当前文件夹）
set "folder=."

:: 设置计数器为用户输入的起始数字
set /a count=!start_num!
:: 添加一个文件计数器
set /a files_processed=0

:: 先创建临时文件列表
dir /b /a-d "%folder%\*.jpg" "%folder%\*.png" "%folder%\*.gif" "%folder%\*.jpeg" > temp_files.txt 2>nul

:: 从临时文件列表读取并重命名
for /f "usebackq delims=" %%f in ("temp_files.txt") do (
    :: 构建新文件名
    set "newname="
    
    :: 如果前缀不为空，添加前缀和连字符
    if not "!prefix!"=="" (
        set "newname=!prefix!-"
    )
    
    :: 构建数字部分，根据指定长度补零
    set "padded_num=000000!count!"
    set "formatted_num=!padded_num:~-%num_length%!"
    set "newname=!newname!!formatted_num!"
    
    :: 获取文件扩展名或使用新的后缀
    if /i "!change_ext!"=="Y" (
        set "ext=!new_ext!"
    ) else (
        set "ext=%%~xf"
    )
    
    :: 重命名文件
    ren "%%f" "!newname!!ext!"
    
    :: 计数器加1
    set /a count+=1
    :: 已处理文件数加1
    set /a files_processed+=1
)

:: 删除临时文件
del temp_files.txt

echo 重命名完成！
echo 共处理了 %files_processed% 个文件
pause