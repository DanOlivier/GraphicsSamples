cmake_minimum_required(VERSION 3.7)

project(samples)

include(FindPkgConfig)

function(PrintVars var)
    if(DEFINED ${var}_FOUND)
        message(STATUS "${var}_FOUND=${${var}_FOUND}")
    endif()
    if(DEFINED ${var}_VERSION)
        message(STATUS "${var}_VERSION=${${var}_VERSION}")
    endif()
    if(DEFINED ${var}_LIBRARIES)
        message(STATUS "${var}_LIBRARIES=${${var}_LIBRARIES}")
    endif()
    if(DEFINED ${var}_LIBRARY_DIRS)
        message(STATUS "${var}_LIBRARY_DIRS=${${var}_LIBRARY_DIRS}")
    endif()
    if(DEFINED ${var}_LDFLAGS)
        message(STATUS "${var}_LDFLAGS=${${var}_LDFLAGS}")
    endif()
    if(DEFINED ${var}_LDFLAGS_OTHER)
        message(STATUS "${var}_LDFLAGS_OTHER=${${var}_LDFLAGS_OTHER}")
    endif()
    if(DEFINED ${var}_INCLUDE_DIRS)
        message(STATUS "${var}_INCLUDE_DIRS=${${var}_INCLUDE_DIRS}")
    endif()
    if(DEFINED ${var}_CFLAGS)
        message(STATUS "${var}_CFLAGS=${${var}_CFLAGS}")
    endif()
    if(DEFINED ${var}_CFLAGS_OTHER)
        message(STATUS "${var}_CFLAGS_OTHER=${${var}_CFLAGS_OTHER}")
    endif()
endfunction()

include(CheckIncludeFiles)
include(CheckIncludeFileCXX)
include(CheckFunctionExists)
include(CheckSymbolExists)
include(CheckLibraryExists)
#include(CheckPrototypeExists)
include(CheckStructHasMember)

#include_directories(${CMAKE_SOURCE_DIR}/extensions/include)
#include_directories(${CMAKE_SOURCE_DIR}/extensions/include/NvVkUtil)
#include_directories(${CMAKE_SOURCE_DIR}/extensions/include/NsFoundation)
#include_directories(${CMAKE_SOURCE_DIR}/extensions/include/NvFoundation)

add_definitions(
    -DLINUX=1
    -DNV_LINUX=1
)
set(COMMON_FLAGS
    #-funwind-tables 
    -Wall 
    #-Wextra 
    -Wno-unused-parameter 
    -Wno-ignored-qualifiers 
    -Wno-unused-but-set-variable
    -Wno-switch
    -Wno-unused-variable 
    -Wno-unused-function 
    #-malign-double
    #-fno-omit-frame-pointer
)
set(CXX_FLAGS
    ${COMMON_FLAGS}
    -Wno-reorder
    -std=c++11
)
string (REPLACE ";" " " COMMON_FLAGS "${COMMON_FLAGS}")
string (REPLACE ";" " " CXX_FLAGS "${CXX_FLAGS}")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${COMMON_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CXX_FLAGS}")

add_subdirectory(extensions)
add_subdirectory(samples)
