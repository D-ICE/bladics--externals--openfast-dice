#
# Copyright 2016 National Renewable Energy Laboratory
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

cmake_minimum_required(VERSION 2.8.12)
project(OpenFAST CXX C Fortran)

include(${OpenFAST_SOURCE_DIR}/cmake/OpenfastCmakeUtils.cmake)
include(${OpenFAST_SOURCE_DIR}/cmake/OpenfastFortranOptions.cmake)

set(CMAKE_MODULE_PATH "${OpenFAST_SOURCE_DIR}/cmake")

# CMake Configuration variables
if (NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE "Release" CACHE STRING
    "Choose the build type: Debug Release" FORCE)
endif (NOT CMAKE_BUILD_TYPE)

option(GENERATE_TYPES "Use the openfast-regsitry to autogenerate types modules" off)
option(BUILD_SHARED_LIBS "Enable building shared libraries" off)
option(DOUBLE_PRECISION "Treat REAL as double precision" on)
option(USE_DLL_INTERFACE "Enable runtime loading of dynamic libraries" on)
option(FPE_TRAP_ENABLED "Enable FPE trap in compiler options" off)
option(ORCA_DLL_LOAD "Enable OrcaFlex Library Load" on)
option(BUILD_OPENFAST_CPP_API "Enable building OpenFAST - C++ API" off)
option(OPENMP                 "Enable OpenMP support"              off)

# Precompiler/preprocessor flag configuration
# Do this before configuring modules so that the flags are included
option(BUILD_TESTING "Build the testing tree." OFF)
if(BUILD_TESTING)
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -DUNIT_TEST")
endif()
option(BUILD_OPENFAST_SIMULINK_API "Enable building OpenFAST for use with Simulink" off)
if(BUILD_OPENFAST_SIMULINK_API)
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -DCOMPILE_SIMULINK")
endif()

# Setup Fortran Compiler options based on architecture/compiler
set_fast_fortran()

if (USE_DLL_INTERFACE)
  add_definitions(-DUSE_DLL_INTERFACE)
endif (USE_DLL_INTERFACE)

if (FPE_TRAP_ENABLED)
  add_definitions(-DFPE_TRAP_ENABLED)
endif (FPE_TRAP_ENABLED)

# Setup dependencies
if (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel")
  find_package(MKL)
endif()
if (MKL_FOUND)
  include_directories(${MKL_INCLUDE_DIRS})
  set(BLAS_LIBRARIES ${MKL_LIBRARIES})
  set(LAPACK_LIBRARIES ${MKL_LIBRARIES})
  set(CMAKE_Fortran_IMPLICIT_LINK_LIBRARIES "ifport;ifcore;imf;svml;m;ipgo;intlc;c;irc_s;dl;c")
else()
  find_package(BLAS REQUIRED)
  find_package(LAPACK REQUIRED)
endif()

########################################################################
# Build rules for OpenFAST Registry
#
if(GENERATE_TYPES)
  add_subdirectory(modules/openfast-registry)
endif()

########################################################################
# OpenFAST modules
#
set(OPENFAST_MODULES
  nwtc-library
  inflowwind
  aerodyn
  aerodyn14
  servodyn
  elastodyn
  beamdyn
  subdyn
  hydrodyn
  orcaflex-interface
  extptfm
  openfoam
  supercontroller
  turbsim
  openfast-library
  version
  feamooring
  moordyn
  icedyn
  icefloe
  map
)

set(OPENFAST_REGISTRY_INCLUDES "" CACHE INTERNAL "Registry includes paths")
set_registry_includes("modules" ${OPENFAST_MODULES})
# Fix non-standard path addition to OPENFAST_REGISTRY_INCLUDES in icefloe module
set(OPENFAST_REGISTRY_INCLUDES
  ${OPENFAST_REGISTRY_INCLUDES} -I ${OpenFAST_SOURCE_DIR}/modules/icefloe/src/interfaces/FAST/
  CACHE INTERNAL "Registry includes paths")

foreach(IDIR IN ITEMS ${OPENFAST_MODULES})
  add_subdirectory("${OpenFAST_SOURCE_DIR}/modules/${IDIR}")
endforeach(IDIR IN ITEMS ${OPENFAST_MODULES})

add_subdirectory(glue-codes)

# Install fortran .mod files also to installation directory
install(CODE
  "EXECUTE_PROCESS (COMMAND \"${CMAKE_COMMAND}\" -E copy_directory \"${CMAKE_Fortran_MODULE_DIRECTORY}\" \"${CMAKE_INSTALL_PREFIX}/include/openfast/\")")

# Install the library dependency information
#install(EXPORT OpenFASTLibraries
#  DESTINATION lib/cmake/OpenFAST
#  FILE OpenFASTLibraries.cmake)

# Create OpenFAST config so that other codes can find OpenFAST
include(CMakePackageConfigHelpers)

set(INCLUDE_INSTALL_DIR include/)
set(LIB_INSTALL_DIR lib/)
set(FTNMOD_INSTALL_DIR include/openfast/)
if (BUILD_OPENFAST_CPP_API)
  set(OpenFAST_HAS_CXX_API TRUE)
else()
  set(OpenFAST_HAS_CXX_API FALSE)
endif()

configure_package_config_file(
  cmake/OpenFASTConfig.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/OpenFASTConfig.cmake
  INSTALL_DESTINATION lib/cmake/OpenFAST
  PATH_VARS INCLUDE_INSTALL_DIR LIB_INSTALL_DIR FTNMOD_INSTALL_DIR)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/OpenFASTConfig.cmake
  DESTINATION lib/cmake/OpenFAST)

########################################################################
# Configure the default install path to openfast/install
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${OpenFAST_SOURCE_DIR}/install" CACHE PATH
    "OpenFAST install directory" FORCE)
endif()

# Option configuration
if(BUILD_TESTING)
  include(CTest)

  # regression tests
  add_subdirectory(reg_tests)

  # unit tests
  add_subdirectory(unit_tests)
endif()

option(BUILD_DOCUMENTATION "Build documentation." OFF)
if(BUILD_DOCUMENTATION)
  add_subdirectory(docs)
endif()
