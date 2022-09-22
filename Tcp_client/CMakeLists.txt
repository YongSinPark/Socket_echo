cmake_minimum_required(VERSION 3.0.0)

project(Tcp_client)

add_executable(${PROJECT_NAME}
    ./Tcp_client.cpp
)

target_compile_options(${PROJECT_NAME} PUBLIC
    -Wall
)