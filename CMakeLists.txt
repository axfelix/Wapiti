# cmake -G "Visual Studio 15 2017 Win64" -T LLVM-vs2014 .

cmake_minimum_required(VERSION 3.9)
project( wapiti LANGUAGES CXX CUDA)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /D_CRT_SECURE_NO_WARNINGS")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /Ot")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /Qvec")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /Wall")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /GL") # whole-program optimizations

## disable multithreaded
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /DMTH_ANSI")

set(CMAKE_SKIP_BUILD_RPATH FALSE)
set(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE)

set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE)

AUX_SOURCE_DIRECTORY(src SOURCES)
AUX_SOURCE_DIRECTORY(src/port SOURCES)

add_executable( wapiti ${SOURCES} )
add_library( libwapiti SHARED ${SOURCES} )

set(CMAKE_VERBOSE_MAKEFILE on)
