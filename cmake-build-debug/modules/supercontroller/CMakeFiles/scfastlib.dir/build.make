# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/natalia/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.6911.21/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/natalia/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.6911.21/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug

# Include any dependencies generated for this target.
include modules/supercontroller/CMakeFiles/scfastlib.dir/depend.make

# Include the progress variables for this target.
include modules/supercontroller/CMakeFiles/scfastlib.dir/progress.make

# Include the compile flags for this target's objects.
include modules/supercontroller/CMakeFiles/scfastlib.dir/flags.make

modules/supercontroller/CMakeFiles/scfastlib.dir/src/SuperController.f90.o: modules/supercontroller/CMakeFiles/scfastlib.dir/flags.make
modules/supercontroller/CMakeFiles/scfastlib.dir/src/SuperController.f90.o: ../modules/supercontroller/src/SuperController.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object modules/supercontroller/CMakeFiles/scfastlib.dir/src/SuperController.f90.o"
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/supercontroller && /home/natalia/anaconda3/bin/x86_64-conda-linux-gnu-gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/modules/supercontroller/src/SuperController.f90 -o CMakeFiles/scfastlib.dir/src/SuperController.f90.o

modules/supercontroller/CMakeFiles/scfastlib.dir/src/SuperController.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/scfastlib.dir/src/SuperController.f90.i"
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/supercontroller && /home/natalia/anaconda3/bin/x86_64-conda-linux-gnu-gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/modules/supercontroller/src/SuperController.f90 > CMakeFiles/scfastlib.dir/src/SuperController.f90.i

modules/supercontroller/CMakeFiles/scfastlib.dir/src/SuperController.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/scfastlib.dir/src/SuperController.f90.s"
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/supercontroller && /home/natalia/anaconda3/bin/x86_64-conda-linux-gnu-gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/modules/supercontroller/src/SuperController.f90 -o CMakeFiles/scfastlib.dir/src/SuperController.f90.s

# Object files for target scfastlib
scfastlib_OBJECTS = \
"CMakeFiles/scfastlib.dir/src/SuperController.f90.o"

# External object files for target scfastlib
scfastlib_EXTERNAL_OBJECTS =

modules/supercontroller/libscfastlib.a: modules/supercontroller/CMakeFiles/scfastlib.dir/src/SuperController.f90.o
modules/supercontroller/libscfastlib.a: modules/supercontroller/CMakeFiles/scfastlib.dir/build.make
modules/supercontroller/libscfastlib.a: modules/supercontroller/CMakeFiles/scfastlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libscfastlib.a"
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/supercontroller && $(CMAKE_COMMAND) -P CMakeFiles/scfastlib.dir/cmake_clean_target.cmake
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/supercontroller && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scfastlib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/supercontroller/CMakeFiles/scfastlib.dir/build: modules/supercontroller/libscfastlib.a

.PHONY : modules/supercontroller/CMakeFiles/scfastlib.dir/build

modules/supercontroller/CMakeFiles/scfastlib.dir/clean:
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/supercontroller && $(CMAKE_COMMAND) -P CMakeFiles/scfastlib.dir/cmake_clean.cmake
.PHONY : modules/supercontroller/CMakeFiles/scfastlib.dir/clean

modules/supercontroller/CMakeFiles/scfastlib.dir/depend:
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0 /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/modules/supercontroller /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/supercontroller /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/supercontroller/CMakeFiles/scfastlib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/supercontroller/CMakeFiles/scfastlib.dir/depend
