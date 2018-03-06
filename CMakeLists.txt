cmake_minimum_required(VERSION 3.7)

project(samples)

#include(FindPkgConfig)
find_package(PkgConfig)

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

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()
#if (CMAKE_BUILD_TYPE MATCHES Deb)
#    message("-D_DEBUG")
#    add_definitions("-D_DEBUG")
#endif()
#if (CMAKE_BUILD_TYPE MATCHES Rel)
#    message("-DNDEBUG")
#    add_definitions("-DNDEBUG")
#endif()

set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -D_DEBUG")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -D_DEBUG")

set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -DNDEBUG")

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
    -Wno-sign-compare
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

pkg_check_modules(FT freetype2 REQUIRED)
#PrintVars(FT)
pkg_check_modules(HB harfbuzz REQUIRED)
#PrintVars(HB)

#pkg_check_modules(GTEST REQUIRED gtest>=1.7.0)
#pkg_check_modules(GMOCK REQUIRED gmock>=1.7.0)

pkg_check_modules(SPIRV_TOOLS REQUIRED SPIRV-Tools)
pkg_check_modules(GLSLANG REQUIRED glslang)

add_subdirectory(BuildTools/spir-v/glsl2spirv)
add_subdirectory(extensions)
add_subdirectory(samples)
