cmake_minimum_required(VERSION 2.8)
# About this project
#-------------------
project(gputimer)


### CUDA
find_package(CUDA REQUIRED)
list(APPEND CUDA_NVCC_FLAGS "-arch=sm_20;-std=c++11;")
SET(CUDA_PROPAGATE_HOST_FLAGS OFF)

## Add headers and source files
#-------------------
set (${PROJECT_NAME}_headers ./gputimer.hpp)
set (${PROJECT_NAME}_sources ./gputimer_test.cpp ./gputimer.cu)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

## Add subfolders
#-------------------
#add_subdirectory(...)

# Create binaries
#-------------------
#add_library(${PROJECT_NAME} STATIC ${${PROJECT_NAME}_headers} ${${PROJECT_NAME}_sources}) # static library -> *.a
add_library(${PROJECT_NAME} SHARED ${${PROJECT_NAME}_headers} ${${PROJECT_NAME}_sources}) # shared library -> *.so

cuda_add_executable(gputimer_test ${${PROJECT_NAME}_sources} ${${PROJECT_NAME}_headers})

target_link_libraries(${PROJECT_NAME} ${CUDA_LIBRARIES})
