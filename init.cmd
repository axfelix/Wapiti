rem Works on my machine...

rm -rf CMakeCache.txt CMakeFiles

"c:\Program Files\CMake\bin\cmake.exe"^
 -DCMAKE_BUILD_TYPE=Release^
 -G Ninja^
 .