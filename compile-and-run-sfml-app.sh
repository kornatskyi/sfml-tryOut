#!/bin/bash

COPILED_FILENAME="main-compiled.o"
EXECUTABLE_FILENAME="sfml-app"
OUT="out"

if [ ! -d "./out" ]
then
    mkdir ./$OUT
fi
# Compile main file with included libraries in the default path
g++ -c main.cpp -o ./$OUT/$COPILED_FILENAME

# Link compile file to SFML binaries to make final executable
 g++ ./$OUT/$COPILED_FILENAME -o ./$OUT/$EXECUTABLE_FILENAME -L/usr/lib -lsfml-graphics -lsfml-window -lsfml-system


# Run file
./$OUT/$EXECUTABLE_FILENAME