# Copy header files into the build directory
function(sample_retiler_copy_headers)
    foreach(filepath IN ITEMS ${ARGN})
        get_filename_component(filename "${filepath}" NAME)
        if(${filename} MATCHES ".*\.(hpp|h|ipp)$")
            configure_file(${filepath} ${PROJECT_BINARY_DIR}/include/sample_retiler/${filename})
        endif()
    endforeach()
endfunction()