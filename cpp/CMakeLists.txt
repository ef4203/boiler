cmake_minimum_required(VERSION 3.0)

project(proj CXX)

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin CACHE INTERNAL "" FORCE)

set(CMAKE_CXX_STANDARD 11)

add_executable(output
        ${PROJECT_SOURCE_DIR}/src/main.cpp
        ${PROJECT_SOURCE_DIR}/src/a.cpp)
