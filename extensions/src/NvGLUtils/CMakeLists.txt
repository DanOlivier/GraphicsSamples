include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_library(NvGLUtils
	NvUITextureRenderGL.cpp
	NvBitFontGL.cpp
	NvMaterialGL.cpp
	NvModelGL.cpp
	NvModelExtGL.cpp
	NvImageGL.cpp
	NvUIGraphicGL.cpp
	NvShapesGL.cpp
	NvGLSLProgram.cpp
	NvUIShadersGL.cpp
	NvUIGraphicFrameGL.cpp
	NvUIGL.cpp
	NvLogsGL.cpp
	NvTimers.cpp
	NvMeshExtGL.cpp
)

target_include_directories(NvGLUtils PRIVATE
    #${VK_SDK_PATH}/x86_64/include
    .
    ../../include
    ../../include/NsFoundation
    ../../include/NvFoundation
    #../../externals/include
    #../../externals/include/GLFW
    #../../include/NvVkUtil
)

