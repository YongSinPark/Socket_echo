cmake_minimum_required(VERSION 3.0.0)

project(Tcp_server)

add_executable(${PROJECT_NAME}
    ./Tcp_server.cpp
)

target_compile_options(${PROJECT_NAME} PUBLIC
    -Wall
)