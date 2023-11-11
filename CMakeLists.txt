cmake_minimum_required(VERSION 3.10)

project(OpenGL)

set(root_directory ${PROJECT_SOURCE_DIR})

set(srcfiles ${PROJECT_SOURCE_DIR}/src/47_ibl_irradiance_conversion/main.cpp)

#设定可执行二进制文件的目录
SET(EXECUTABLE_OUTPUT_PATH ${root_directory}/bin)

# 指定头文件搜索路径
include_directories(${root_directory}/include)

# 包含静态库路径
link_directories(${root_directory}/lib)
link_directories(${root_directory}/bin)
# 链接静态库
link_libraries(libassimp.a libassimp.dll.a libglad.a libglfw3.a libglfw3dll.a)

# 生成可执行文件
add_executable(${PROJECT_NAME} ${srcfiles})

# 动态库
target_link_libraries(${PROJECT_NAME} glfw3.dll libassimp.dll)

