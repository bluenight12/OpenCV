set(pathOPENCV C:/opencv/build/x64/mingw/)
set(pathsrc C:/Users/blue/Desktop/Develop/OpenCV)
set(LIBOPENCV ${pathOPENCV}/x64/mingw/lib/libopencv_world480.dll.a)
cmake_minimum_required(VERSION 3.16)

project(openCV LANGUAGES CXX VERSION 0.1.0)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE Debug)

file(GLOB SRC
    "*.cpp" "*.c" "*.h")

add_executable(openCV ${SRC})
target_include_directories(openCV PUBLIC ${pathsrc})
target_include_directories(openCV PUBLIC ${pathOPENCV}/include)
target_link_libraries(openCV ${LIBOPENCV})

