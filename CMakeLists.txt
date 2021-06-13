cmake_minimum_required(VERSION 3.0.0)
set(PROJECT_NAME cpp-boilerplate)
set(PROJECT_VERSION 0.1.0)

project(${PROJECT_NAME} VERSION ${PROJECT_VERSION})

include(dependencies/conanbuildinfo.cmake)
conan_basic_setup()

include_directories(src)
file(GLOB SRC_FILES src/*.cpp src/**/*.cpp)

add_executable(${PROJECT_NAME} ${SRC_FILES})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})

target_link_libraries(${PROJECT_NAME} ${CONAN_LIBS})

if(MSVC)
	target_compile_options(${PROJECT_NAME} PRIVATE /W4 /WX)
else()
	target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra -pedantic -Werror -Weffc++ -Wsign-conversion)
endif()
