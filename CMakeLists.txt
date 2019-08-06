cmake_minimum_required(VERSION 3.1)
project("sample_retiler")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
include(DownloadProject)
include(CopyHeaders)
download_project(
        PROJ         libigl
        SOURCE_DIR   ${CMAKE_CURRENT_SOURCE_DIR}/external/libigl
        DOWNLOAD_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external/.cache/libigl
        GIT_REPOSITORY https://github.com/ldxiao/libigl.git
        GIT_TAG       ldxv2.1.0)

# libigl
option(LIBIGL_USE_STATIC_LIBRARY "Use libigl as static library" OFF)
option(LIBIGL_WITH_ANTTWEAKBAR       "Use AntTweakBar"    OFF)
option(LIBIGL_WITH_CGAL              "Use CGAL"           ON)
option(LIBIGL_WITH_COMISO            "Use CoMiso"         OFF)
option(LIBIGL_WITH_CORK              "Use Cork"           OFF)
option(LIBIGL_WITH_EMBREE            "Use Embree"         OFF)
option(LIBIGL_WITH_LIM               "Use LIM"            OFF)
option(LIBIGL_WITH_MATLAB            "Use Matlab"         OFF)
option(LIBIGL_WITH_MOSEK             "Use MOSEK"          OFF)
option(LIBIGL_WITH_OPENGL            "Use OpenGL"         ON)
option(LIBIGL_WITH_OPENGL_GLFW       "Use GLFW"           ON)
option(LIBIGL_WITH_OPENGL_GLFW_IMGUI "Use ImGui"          ON)
option(LIBIGL_WITH_PNG               "Use PNG"            OFF)
option(LIBIGL_WITH_PYTHON            "Use Python"         OFF)
option(LIBIGL_WITH_TETGEN            "Use Tetgen"         OFF)
option(LIBIGL_WITH_TRIANGLE          "Use Triangle"       OFF)
option(LIBIGL_WITH_VIEWER            "Use OpenGL viewer"  ON)
option(LIBIGL_WITH_XML               "Use XML"            OFF)

find_package(LIBIGL REQUIRED QUIET)

download_project(
        PROJ         json
        SOURCE_DIR   ${CMAKE_CURRENT_SOURCE_DIR}/external/json
        DOWNLOAD_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external/.cache/json
        GIT_REPOSITORY https://github.com/nlohmann/json.git
        GIT_TAG        v3.6.1
)
#json
add_library(json INTERFACE)
target_include_directories(json SYSTEM INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/external/json/include)

#file(GLOB_RECURSE SOURCES "*.cpp" "*.h")
set(SOURCES
        src/main.cpp
        src/retiler.cpp
        src/retiler.h
        src/Mesh.h
        src/Mesh.cpp
        src/MeshEx.h
        src/MeshEx.cpp
        )
add_library(${PROJECT_NAME}_lib ${SOURCES})
target_include_directories(${PROJECT_NAME}_lib PUBLIC ${PROJECT_BINARY_DIR}/include)
sample_retiler_copy_headers(${SOURCES})
target_link_libraries(${PROJECT_NAME}_lib PUBLIC
        json
        igl::core
        igl::cgal
        igl::opengl_glfw
        igl::opengl_glfw_imgui
        )
add_executable(${PROJECT_NAME}_bin src/main.cpp)
target_link_libraries(${PROJECT_NAME}_bin PUBLIC ${PROJECT_NAME}_lib)