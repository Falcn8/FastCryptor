@echo off
set /p version="Enter which version to compile (v1/v2/v3/v4): "
if not exist build mkdir build

if "%version%"=="v1" (
    echo ~~ FC1 Compiler ~~
    if exist "src\v1\encrypt.cpp" if exist "src\v1\decrypt.cpp" (
        g++ src\v1\encrypt.cpp -o build\FC1 -std=c++11
        g++ src\v1\decrypt.cpp -o build\FC1_DECRYPTOR -std=c++11
        echo Finished compiling!
    ) else (
        echo Error: File not found! Please download the source code.
    )
) else if "%version%"=="v2" (
    echo ~~ FC2 Compiler ~~
    if exist "src\v2\encrypt.cpp" if exist "src\v2\decrypt.cpp" (
        g++ src\v2\encrypt.cpp -o build\FC2 -std=c++11
        g++ src\v2\decrypt.cpp -o build\FC2_DECRYPTOR -std=c++11
        echo Finished compiling!
    ) else (
        echo Error: File not found! Please download the source code.
    )
) else if "%version%"=="v3" (
    echo ~~ FC3 Compiler ~~
    if exist "src\v3\encrypt.cpp" if exist "src\v3\decrypt.cpp" (
        g++ src\v3\encrypt.cpp -o build\FC3 -std=c++11
        g++ src\v3\decrypt.cpp -o build\FC3_DECRYPTOR -std=c++11
        echo Finished compiling!
    ) else (
        echo Error: File not found! Please download the source code.
    )
) else if "%version%"=="v4" (
    echo ~~ FC4 Compiler ~~
    if exist "src\v4\encrypt.cpp" if exist "src\v4\decrypt.cpp" (
        g++ src\v4\encrypt.cpp -o build\FC4 -std=c++11
        g++ src\v4\decrypt.cpp -o build\FC4_DECRYPTOR -std=c++11
        echo Finished compiling!
    ) else (
        echo Error: File not found! Please download the source code.
    )
) else (
    echo Error: Invalid version!
)

pause
