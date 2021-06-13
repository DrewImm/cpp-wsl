cmake_minimum_required(VERSION 3.0.0)
set(PROJECT_NAME cpp-boilerplate)
set(PROJECT_VERSION 0.1.0)

project(${PROJECT_NAME} VERSION ${PROJECT_VERSION})

include_directories(src)
file(GLOB SRC_FILES src/*.cpp)

add_executable(${PROJECT_NAME} ${SRC_FILES})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
