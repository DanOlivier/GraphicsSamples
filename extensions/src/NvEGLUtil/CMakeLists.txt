include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_library(NvEGLUtil
	NvEGLUtil.cpp
)

target_include_directories(NvEGLUtil PRIVATE
    #${VK_SDK_PATH}/x86_64/include
    .
    ../../include
    ../../include/NsFoundation
    ../../include/NvFoundation
    #../../externals/include
    #../../externals/include/GLFW
    #../../include/NvVkUtil
)

