:: This batch use cmake to generate the dealii project.
:: the default path of build is inside the pwd. 
:: This can be used as right click menu, say "cmake build here"

SETLOCAL
@echo off

CALL "C:\Program Files (x86)\IntelSWTools\compilers_and_libraries_2016\windows\mkl\bin\mklvars.bat" ia32
SET BOOST_ROOT=C:/local/boost_1_56_0
SET BOOST_LIBRARYDIR=C:/local/boost_1_56_0/lib64-msvc-12.0
mkdir build
cd build
CALL "C:\Program Files (x86)\CMake\bin\cmake.exe" -G "Visual Studio 12 2013" .. -DDEAL_II_DIR="F:/CBC_build/dealii/install"

ENDLOCAL
