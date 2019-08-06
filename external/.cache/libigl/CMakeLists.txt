# Distributed under the OSI-approved MIT License.  See accompanying
# file LICENSE or https://github.com/Crascit/DownloadProject for details.

cmake_minimum_required(VERSION 2.8.2)

project(libigl-download NONE)

include(ExternalProject)
ExternalProject_Add(libigl-download
                    GIT_REPOSITORY;https://github.com/ldxiao/libigl.git;GIT_TAG;ldxv2.1.0
                    SOURCE_DIR          "/Users/vector_cat/gits/SampleRetiler/external/libigl"
                    BINARY_DIR          "/Users/vector_cat/gits/SampleRetiler/cmake-build-debug/libigl-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
)
