# Cpp_dir_creator
script to create the base of a cpp project

1) put this script in the root of your C++ module.. ex : CPP-module_02
2) Chmod u+x scripts.sh
3) Usage : bash script.sh 'exerciseNumber' 'first .hpp' 'second.hpp' 'third .hpp' '...can go up to five .hpp file'

... it will create : 
-the 'exerciseNumber' directory
-an includes folder
-an srcs folder
-the .hpp files you indicated as arguments with their basic content with canonic class
-the corresponding .cpp files with the 'skull' of canonic functions, the right #include path for matching .hpp files
-a main.cpp with the basic 'skull'
-a Makefile with matching srcs/files.cpp