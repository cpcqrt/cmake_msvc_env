:: 1st arg: ${target}, which will be the target exe when debugging.
:: 
:: The default is for msvc

SETLOCAL

SET BOOST_DIR=C:/local/boost_1_56_0
SET BOOST_LIBRARYDIR=C:/local/boost_1_56_0/lib64-msvc-12.0
SET cmake="C:\Program Files (x86)\CMake\bin\cmake.exe"
CALL "C:\Program Files (x86)\IntelSWTools\compilers_and_libraries_2016.0.110\windows\bin\ipsxe-comp-vars.bat" ia32 vs2013
CALL %1 %2 %3 %4 %5 %6 %7 %8 %9

ENDLOCAL
