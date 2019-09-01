cmake_minimum_required(VERSION 3.0)
project(boiler)

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin CACHE INTERNAL "" FORCE)

if (UNIX)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -std=c99 -pedantic -Wall -Wextra -Wfloat-equal -Wshadow -Wunused-parameter")
endif (UNIX)

include_directories(${PROJECT_SOURCE_DIR}/include)

add_executable(output
        ${PROJECT_SOURCE_DIR}/src/main.c
        ${PROJECT_SOURCE_DIR}/src/a.c)
