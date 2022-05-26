cmake_minimum_required(VERSION 3.5)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR})

include (Dof)

Dockerfile_Generate("hello" DOCKER_REGISTRY "myregistr" PYPI_HOST "eawew")

