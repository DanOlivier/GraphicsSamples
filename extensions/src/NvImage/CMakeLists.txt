include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_library(NvImage
	NvImage.cpp
	NvFilePtr.cpp
	BlockDXT.cpp
	ColorBlock.cpp
	NvImageDDS.cpp
)

target_include_directories(NvImage PRIVATE
    #${VK_SDK_PATH}/x86_64/include
    .
    ../../include
    ../../include/NsFoundation
    ../../include/NvFoundation
    #../../externals/include
    #../../externals/include/GLFW
    #../../include/NvVkUtil
)

