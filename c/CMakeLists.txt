cmake_minimum_required(VERSION 3.0)

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin CACHE INTERNAL "" FORCE)
set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -std=c99 -pedantic -Wall -Wextra -Wfloat-equal -Wshadow -Wunused-parameter")

add_executable(output
        ${PROJECT_SOURCE_DIR}/src/main.c
        ${PROJECT_SOURCE_DIR}/src/a.c)
