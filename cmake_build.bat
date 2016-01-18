:: This batch use cmake to generate the dealii project.
:: the default path of build is inside the pwd. 
:: This can be used as right click menu, say "cmake build here"

:: SETLOCAL
@echo off
if "%1"=="" (set buildDir=build) else (set buildDir=%1)

echo Build Dir: %buildDir%
CALL "C:\Program Files (x86)\IntelSWTools\compilers_and_libraries_2016\windows\mkl\bin\mklvars.bat" ia32
mkdir %buildDir%
cd %buildDir%
CALL "C:\Program Files (x86)\CMake\bin\cmake.exe" -G "Visual Studio 12 2013" .. -DDEAL_II_DIR="F:/CBC_build/dealii/install-x86-vs2013-tjhei-bundledboost-notbb-shareoff" -DBOOST_ROOT=C:/local/boost_1_56_0 -DBOOST_LIBRARYDIR=C:/local/boost_1_56_0/lib32-msvc-12.0 

cd ..
:: ENDLOCAL
