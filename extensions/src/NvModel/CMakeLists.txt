include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_library(NvModel
	NvModelMeshFace.cpp
	NvModelExtBuilder.cpp
	NvSkeleton.cpp
	NvModelExtBin.cpp
	NvModelSubMeshObj.cpp
	NvModelExt.cpp
	NvModelObj.cpp
	NvModelExtObj.cpp
	NvModel.cpp
)

target_include_directories(NvModel PRIVATE
    #${VK_SDK_PATH}/x86_64/include
    .
    ../../include
    ../../include/NsFoundation
    ../../include/NvFoundation
    #../../externals/include
    #../../externals/include/GLFW
    #../../include/NvVkUtil
)

