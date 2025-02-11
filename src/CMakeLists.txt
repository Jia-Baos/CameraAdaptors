cmake_minimum_required(VERSION 3.27)

project(src-files)

message(STATUS "Project Name: ${PROJECT_NAME}")
message(STATUS "Project Dir: ${CMAKE_CURRENT_SOURCE_DIR}")

add_subdirectory(orbbec)
add_subdirectory(hikang)
add_subdirectory(run)
