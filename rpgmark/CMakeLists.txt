cmake_minimum_required(VERSION 3.5)
project(Softwater)

add_executable(test test.cpp sip.cpp rpg.cpp)

add_library(RPGMark MODULE
    embedder.cpp
    sip.cpp
    rpg.cpp
    graph_matcher.cpp
)
add_executable(extractor 
    extractor.cpp
    sip.cpp
    rpg.cpp
)
target_compile_features(RPGMark PRIVATE cxx_std_23)
set_target_properties(RPGMark PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)

