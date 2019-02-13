#include <iostream>

extern "C"{
    #include "lua.h"
    #include "lualib.h"
    #include "lauxlib.h"
}

using namespace std;

int main(int argc,char *argv[]){

cout<< "Assignment #3-1, Samantha Wagner, swagner210@yahoo.com"<<endl;

lua_State *L = luaL_newstate(); //has lua varibales and functions
luaL_openlibs(L);   //contains lua libraries


//luaL_loadfile(L, file);     //load the lua file
luaL_dofile(L,argv[1]);

lua_close(L);       //clse lua file

}
