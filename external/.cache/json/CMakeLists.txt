# Distributed under the OSI-approved MIT License.  See accompanying
# file LICENSE or https://github.com/Crascit/DownloadProject for details.

cmake_minimum_required(VERSION 2.8.2)

project(json-download NONE)

include(ExternalProject)
ExternalProject_Add(json-download
                    GIT_REPOSITORY;https://github.com/nlohmann/json.git;GIT_TAG;v3.6.1
                    SOURCE_DIR          "/Users/vector_cat/gits/SampleRetiler/external/json"
                    BINARY_DIR          "/Users/vector_cat/gits/SampleRetiler/cmake-build-debug/json-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
)
