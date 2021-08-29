cmake_minimum_required(VERSION 3.4.1)

file(GLOB_RECURSE cppPaths "../shallow-blue/src/*.cc")
add_library( 
    fluttershallowblue
    SHARED
    ../src/flutter_shallow_blue.cpp
    ${cppPaths}
)