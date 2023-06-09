# Install script for directory: /data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  EXECUTE_PROCESS (COMMAND "/home/natalia/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.6911.21/bin/cmake/linux/bin/cmake" -E copy_directory "/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/ftnmods" "/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/install/include/openfast/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenFAST/OpenFASTLibraries.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenFAST/OpenFASTLibraries.cmake"
         "/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/CMakeFiles/Export/lib/cmake/OpenFAST/OpenFASTLibraries.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenFAST/OpenFASTLibraries-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenFAST/OpenFASTLibraries.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenFAST" TYPE FILE FILES "/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/CMakeFiles/Export/lib/cmake/OpenFAST/OpenFASTLibraries.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenFAST" TYPE FILE FILES "/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/CMakeFiles/Export/lib/cmake/OpenFAST/OpenFASTLibraries-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenFAST" TYPE FILE FILES "/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/OpenFASTConfig.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/nwtc-library/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/inflowwind/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/aerodyn/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/aerodyn14/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/servodyn/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/elastodyn/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/beamdyn/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/subdyn/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/hydrodyn/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/orcaflex-interface/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/extptfm/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/openfoam/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/supercontroller/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/turbsim/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/openfast-library/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/version/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/feamooring/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/moordyn/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/icedyn/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/icefloe/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/map/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/wakedynamics/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/modules/awae/cmake_install.cmake")
  include("/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/glue-codes/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/data1/bladics/externals/bladics--externals--openfast-dice_v3.2.0/cmake-build-debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")