# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl

# Utility rule file for libigl-download.

# Include the progress variables for this target.
include CMakeFiles/libigl-download.dir/progress.make

CMakeFiles/libigl-download: CMakeFiles/libigl-download-complete


CMakeFiles/libigl-download-complete: libigl-download-prefix/src/libigl-download-stamp/libigl-download-install
CMakeFiles/libigl-download-complete: libigl-download-prefix/src/libigl-download-stamp/libigl-download-mkdir
CMakeFiles/libigl-download-complete: libigl-download-prefix/src/libigl-download-stamp/libigl-download-download
CMakeFiles/libigl-download-complete: libigl-download-prefix/src/libigl-download-stamp/libigl-download-update
CMakeFiles/libigl-download-complete: libigl-download-prefix/src/libigl-download-stamp/libigl-download-patch
CMakeFiles/libigl-download-complete: libigl-download-prefix/src/libigl-download-stamp/libigl-download-configure
CMakeFiles/libigl-download-complete: libigl-download-prefix/src/libigl-download-stamp/libigl-download-build
CMakeFiles/libigl-download-complete: libigl-download-prefix/src/libigl-download-stamp/libigl-download-install
CMakeFiles/libigl-download-complete: libigl-download-prefix/src/libigl-download-stamp/libigl-download-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'libigl-download'"
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles/libigl-download-complete
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/src/libigl-download-stamp/libigl-download-done

libigl-download-prefix/src/libigl-download-stamp/libigl-download-install: libigl-download-prefix/src/libigl-download-stamp/libigl-download-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'libigl-download'"
	cd /Users/vector_cat/gits/SampleRetiler/cmake-build-debug/libigl-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	cd /Users/vector_cat/gits/SampleRetiler/cmake-build-debug/libigl-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/src/libigl-download-stamp/libigl-download-install

libigl-download-prefix/src/libigl-download-stamp/libigl-download-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'libigl-download'"
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/vector_cat/gits/SampleRetiler/external/libigl
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/vector_cat/gits/SampleRetiler/cmake-build-debug/libigl-build
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/tmp
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/src/libigl-download-stamp
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/src
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/src/libigl-download-stamp/libigl-download-mkdir

libigl-download-prefix/src/libigl-download-stamp/libigl-download-download: libigl-download-prefix/src/libigl-download-stamp/libigl-download-gitinfo.txt
libigl-download-prefix/src/libigl-download-stamp/libigl-download-download: libigl-download-prefix/src/libigl-download-stamp/libigl-download-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'libigl-download'"
	cd /Users/vector_cat/gits/SampleRetiler/external && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -P /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/tmp/libigl-download-gitclone.cmake
	cd /Users/vector_cat/gits/SampleRetiler/external && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/src/libigl-download-stamp/libigl-download-download

libigl-download-prefix/src/libigl-download-stamp/libigl-download-update: libigl-download-prefix/src/libigl-download-stamp/libigl-download-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'libigl-download'"
	cd /Users/vector_cat/gits/SampleRetiler/external/libigl && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -P /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/tmp/libigl-download-gitupdate.cmake

libigl-download-prefix/src/libigl-download-stamp/libigl-download-patch: libigl-download-prefix/src/libigl-download-stamp/libigl-download-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'libigl-download'"
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/src/libigl-download-stamp/libigl-download-patch

libigl-download-prefix/src/libigl-download-stamp/libigl-download-configure: libigl-download-prefix/tmp/libigl-download-cfgcmd.txt
libigl-download-prefix/src/libigl-download-stamp/libigl-download-configure: libigl-download-prefix/src/libigl-download-stamp/libigl-download-update
libigl-download-prefix/src/libigl-download-stamp/libigl-download-configure: libigl-download-prefix/src/libigl-download-stamp/libigl-download-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'libigl-download'"
	cd /Users/vector_cat/gits/SampleRetiler/cmake-build-debug/libigl-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	cd /Users/vector_cat/gits/SampleRetiler/cmake-build-debug/libigl-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/src/libigl-download-stamp/libigl-download-configure

libigl-download-prefix/src/libigl-download-stamp/libigl-download-build: libigl-download-prefix/src/libigl-download-stamp/libigl-download-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No build step for 'libigl-download'"
	cd /Users/vector_cat/gits/SampleRetiler/cmake-build-debug/libigl-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	cd /Users/vector_cat/gits/SampleRetiler/cmake-build-debug/libigl-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/src/libigl-download-stamp/libigl-download-build

libigl-download-prefix/src/libigl-download-stamp/libigl-download-test: libigl-download-prefix/src/libigl-download-stamp/libigl-download-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'libigl-download'"
	cd /Users/vector_cat/gits/SampleRetiler/cmake-build-debug/libigl-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	cd /Users/vector_cat/gits/SampleRetiler/cmake-build-debug/libigl-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/libigl-download-prefix/src/libigl-download-stamp/libigl-download-test

libigl-download: CMakeFiles/libigl-download
libigl-download: CMakeFiles/libigl-download-complete
libigl-download: libigl-download-prefix/src/libigl-download-stamp/libigl-download-install
libigl-download: libigl-download-prefix/src/libigl-download-stamp/libigl-download-mkdir
libigl-download: libigl-download-prefix/src/libigl-download-stamp/libigl-download-download
libigl-download: libigl-download-prefix/src/libigl-download-stamp/libigl-download-update
libigl-download: libigl-download-prefix/src/libigl-download-stamp/libigl-download-patch
libigl-download: libigl-download-prefix/src/libigl-download-stamp/libigl-download-configure
libigl-download: libigl-download-prefix/src/libigl-download-stamp/libigl-download-build
libigl-download: libigl-download-prefix/src/libigl-download-stamp/libigl-download-test
libigl-download: CMakeFiles/libigl-download.dir/build.make

.PHONY : libigl-download

# Rule to build all files generated by this target.
CMakeFiles/libigl-download.dir/build: libigl-download

.PHONY : CMakeFiles/libigl-download.dir/build

CMakeFiles/libigl-download.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libigl-download.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libigl-download.dir/clean

CMakeFiles/libigl-download.dir/depend:
	cd /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl /Users/vector_cat/gits/SampleRetiler/external/.cache/libigl/CMakeFiles/libigl-download.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libigl-download.dir/depend

