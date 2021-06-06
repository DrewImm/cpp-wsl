cmake_minimum_required(VERSION 3.0.0)
project(cpp-boilerplate VERSION 0.1.0)

include_directories(src)
file(GLOB SRC_FILES src/*.cpp)

add_executable(cpp-boilerplate ${SRC_FILES})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
