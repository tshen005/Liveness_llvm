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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/Transforms/LivenessAnalysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/build

# Include any dependencies generated for this target.
include CMakeFiles/LivenessAnalysis.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LivenessAnalysis.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LivenessAnalysis.dir/flags.make

CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.o: CMakeFiles/LivenessAnalysis.dir/flags.make
CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.o: /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/Transforms/LivenessAnalysis/Liveness.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.o -c /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/Transforms/LivenessAnalysis/Liveness.cpp

CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/Transforms/LivenessAnalysis/Liveness.cpp > CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.i

CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/Transforms/LivenessAnalysis/Liveness.cpp -o CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.s

# Object files for target LivenessAnalysis
LivenessAnalysis_OBJECTS = \
"CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.o"

# External object files for target LivenessAnalysis
LivenessAnalysis_EXTERNAL_OBJECTS =

libLivenessAnalysis.so: CMakeFiles/LivenessAnalysis.dir/Liveness.cpp.o
libLivenessAnalysis.so: CMakeFiles/LivenessAnalysis.dir/build.make
libLivenessAnalysis.so: CMakeFiles/LivenessAnalysis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module libLivenessAnalysis.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LivenessAnalysis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LivenessAnalysis.dir/build: libLivenessAnalysis.so

.PHONY : CMakeFiles/LivenessAnalysis.dir/build

CMakeFiles/LivenessAnalysis.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LivenessAnalysis.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LivenessAnalysis.dir/clean

CMakeFiles/LivenessAnalysis.dir/depend:
	cd /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/Transforms/LivenessAnalysis /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/Transforms/LivenessAnalysis /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/build /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/build /Users/shen/Documents/GitHub/LVN-LLVM/Liveness/Pass/build/CMakeFiles/LivenessAnalysis.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LivenessAnalysis.dir/depend
