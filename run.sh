#!/bin/sh

# This script compiles and executes a c or c++ file saving yourself from typing two commands
# this also checks the file extension so that you don't have too

# to make it even easier, alias the execution of the file. Run these commands below

# chmod +x run.sh
# alias run='./run.sh'

# if you are going to be using this command often, consider adding the alias to your .bashrc or .zshrc

if [ ${1: -2} == ".c" ]
then
    if gcc $1 ; then
        echo "Compiling a C program..."
    echo "Compiled successfully! Running..."
    ./a.out
    else
        echo "Compilation stopped"
    fi

elif [ ${1: -4} == ".cpp" ]
then
    if g++ $1 ; then
    echo "Compiling a C++ program..."
    echo "Compiled successfully! Running..."
    ./a.out
    else
        echo "Compilation stopped"
    fi

else
    echo "Please specify either a .c file or a .cpp file."

fi
