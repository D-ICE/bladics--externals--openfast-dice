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
CMAKE_BINARY_DIR = /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release

# Include any dependencies generated for this target.
include modules/feamooring/CMakeFiles/feam_driver.dir/depend.make

# Include the progress variables for this target.
include modules/feamooring/CMakeFiles/feam_driver.dir/progress.make

# Include the compile flags for this target's objects.
include modules/feamooring/CMakeFiles/feam_driver.dir/flags.make

modules/feamooring/CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.o: modules/feamooring/CMakeFiles/feam_driver.dir/flags.make
modules/feamooring/CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.o: ../modules/feamooring/src/FEAM_Driver.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object modules/feamooring/CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.o"
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release/modules/feamooring && /home/natalia/anaconda3/bin/x86_64-conda-linux-gnu-gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/modules/feamooring/src/FEAM_Driver.f90 -o CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.o

modules/feamooring/CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.i"
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release/modules/feamooring && /home/natalia/anaconda3/bin/x86_64-conda-linux-gnu-gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/modules/feamooring/src/FEAM_Driver.f90 > CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.i

modules/feamooring/CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.s"
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release/modules/feamooring && /home/natalia/anaconda3/bin/x86_64-conda-linux-gnu-gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/modules/feamooring/src/FEAM_Driver.f90 -o CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.s

# Object files for target feam_driver
feam_driver_OBJECTS = \
"CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.o"

# External object files for target feam_driver
feam_driver_EXTERNAL_OBJECTS =

modules/feamooring/feam_driver: modules/feamooring/CMakeFiles/feam_driver.dir/src/FEAM_Driver.f90.o
modules/feamooring/feam_driver: modules/feamooring/CMakeFiles/feam_driver.dir/build.make
modules/feamooring/feam_driver: modules/feamooring/libfeamlib.a
modules/feamooring/feam_driver: modules/version/libversioninfolib.a
modules/feamooring/feam_driver: modules/nwtc-library/libnwtclibs.a
modules/feamooring/feam_driver: /home/natalia/anaconda3/lib/libmkl_gf_lp64.so
modules/feamooring/feam_driver: /home/natalia/anaconda3/lib/libmkl_gnu_thread.so
modules/feamooring/feam_driver: /home/natalia/anaconda3/lib/libmkl_core.so
modules/feamooring/feam_driver: /home/natalia/anaconda3/lib/libgomp.so
modules/feamooring/feam_driver: modules/feamooring/CMakeFiles/feam_driver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran executable feam_driver"
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release/modules/feamooring && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/feam_driver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/feamooring/CMakeFiles/feam_driver.dir/build: modules/feamooring/feam_driver

.PHONY : modules/feamooring/CMakeFiles/feam_driver.dir/build

modules/feamooring/CMakeFiles/feam_driver.dir/clean:
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release/modules/feamooring && $(CMAKE_COMMAND) -P CMakeFiles/feam_driver.dir/cmake_clean.cmake
.PHONY : modules/feamooring/CMakeFiles/feam_driver.dir/clean

modules/feamooring/CMakeFiles/feam_driver.dir/depend:
	cd /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0 /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/modules/feamooring /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release/modules/feamooring /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-release/modules/feamooring/CMakeFiles/feam_driver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/feamooring/CMakeFiles/feam_driver.dir/depend
