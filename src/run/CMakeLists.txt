
cmake_minimum_required(VERSION 3.27)

project(camera_run)

message(STATUS "Project Name: ${PROJECT_NAME}")
message(STATUS "Project Dir: ${CMAKE_CURRENT_SOURCE_DIR}")

# 将源代码添加到此项目的可执行文件。
# aux_source_directory(. main_files)
file(GLOB FILES_SRC "./*.cpp")
file(GLOB FILES_HEADERS "./*.h")
file(GLOB BASE_FILES_HEADERS "../*.h")
add_executable(${PROJECT_NAME} ${FILES_SRC} ${FILES_HEADERS} ${BASE_FILES_HEADERS})

# 链接库头文件路径
target_include_directories(${PROJECT_NAME} PUBLIC ../ ../hikang ../orbbec)

# 链接库文件夹
# 如果动态链接库和静态链接库同名，优先调用静态链接库
target_link_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/install/lib)

target_link_libraries(${PROJECT_NAME} PUBLIC orbbec hikang)

install(TARGETS ${PROJECT_NAME}
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin)
