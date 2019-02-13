# 320-programming-languages-prog3

Samantha Wagner

prog3_1.cpp- this takes in a lua file and and runs it in a lua enviroment.
How to compile-g++ prog3_1.cpp -I ~/lua-5.3.5/src/ -L ~/lua-5.3.5/src/ -l lua -l dl -l m

prog3_2.lua- theis takes in a user inputed string and runs the infix to postfix function on it.
how to compile- lua prog3_1.lua -I ~/lua-5.3.5/src/ -L ~/lua-5.3.5/src/ -l lua -l dl -l m

prog3_3.cpp-this should also run a lua file in a lua enviroment.It will take in a command from stdin and run it through the infix to postfix function in  lua and return the output.
how to compile- g++ prog3_3.cpp -I ~/lua-5.3.5/src/ -L ~/lua-5.3.5/src/ -l lua -l dl -l m
