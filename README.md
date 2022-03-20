# Cpp_dir_creator
script to create the base of a cpp project

1) put this script in the root of your C++ module.. ex : CPP-module_02. And make sure this repository is empty. 
2) Chmod u+x scripts.sh
3) Usage : bash script.sh 'exerciseNumber' 'First.hpp' 'Second.hpp' 'Third.hpp' '...can go up to five .hpp file'
4) ==> Put the first letter of the required .hpp as capital Letter. Don't write ".hpp" after the name.
5) ==> EXAMPLE 1: bash script.sh ex05 Karen
6) ==> EXAMPLE 2: bash script.sh ex03 HumanA HumanB Weapon

... it will create : 
-the 'exerciseNumber' directory
-an includes folder
-an srcs folder
-the .hpp files you indicated as arguments with their basic content with canonic class
-the corresponding .cpp files with the 'skull' of canonic functions, the right #include path for matching .hpp files
-a main.cpp with the basic 'skull'
-a Makefile with matching srcs/files.cpp
