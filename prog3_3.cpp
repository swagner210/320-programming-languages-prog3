#include <iostream>

extern "C"{
    #include "lua.h"
    #include "lualib.h"
    #include "lauxlib.h"
}

using namespace std;

int main(int argc,char *argv[]){

string userinput;

cout<< "Assignment #3-3, Samantha Wagner, swagner210@yahoo.com"<<endl;

lua_State *L = luaL_newstate();         //has lua varibales and functions
luaL_openlibs(L);                        //contains lua libraries

luaL_dofile(L,argv[1]);                  //load the lua file

    
getline(cin,userinput);
string s = "return InfixToPostfix('"+userinput+"')";

luaL_dostring(L, s.c_str());

const char *output = luaL_checkstring(L,1);

cout<< output << endl;


lua_close(L);                           //clse lua file

}
