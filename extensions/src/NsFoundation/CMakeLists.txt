include_directories(${CMAKE_CURRENT_SOURCE_DIR})

#list(APPEND SOURCES android/cpu-features.c

#list(APPEND SOURCES windows/NsWindowsSync.cpp)
#list(APPEND SOURCES windows/NsWindowsSList.cpp)
#list(APPEND SOURCES windows/NsWindowsCpu.cpp)
#list(APPEND SOURCES windows/NsWindowsFPU.cpp)
#list(APPEND SOURCES windows/NsWindowsPrintString.cpp)
#list(APPEND SOURCES windows/NsWindowsSocket.cpp)
#list(APPEND SOURCES windows/NsWindowsTime.cpp)
#list(APPEND SOURCES windows/NsWindowsThread.cpp)
#list(APPEND SOURCES windows/NsWindowsAtomic.cpp)
#list(APPEND SOURCES windows/NsWindowsMutex.cpp)
#list(APPEND SOURCES windows/modern/NsWindowsModernThread.cpp)
#list(APPEND SOURCES windows/modern/NsWindowsModernSocket.cpp)

list(APPEND SOURCES unix/NsUnixSocket.cpp)
list(APPEND SOURCES unix/NsUnixMutex.cpp)
list(APPEND SOURCES unix/NsUnixAtomic.cpp)
list(APPEND SOURCES unix/NsUnixFPU.cpp)
list(APPEND SOURCES unix/NsUnixTime.cpp)
list(APPEND SOURCES unix/NsUnixCpu.cpp)
list(APPEND SOURCES unix/NsUnixSList.cpp)
list(APPEND SOURCES unix/NsUnixPrintString.cpp)
list(APPEND SOURCES unix/NsUnixThread.cpp)
list(APPEND SOURCES unix/NsUnixSync.cpp)

add_library(NsFoundation
	${SOURCES}
	NsTempAllocator.cpp
	NsAllocator.cpp
	NsGlobals.cpp
	NsHeaderTest.cpp
	NsAssert.cpp
	NsString.cpp
)

target_include_directories(NsFoundation PRIVATE
    #${VK_SDK_PATH}/x86_64/include
    .
    ../../include
    ../../include/NsFoundation
    ../../include/NvFoundation
    #../../externals/include
    #../../externals/include/GLFW
    #../../include/NvVkUtil
)
