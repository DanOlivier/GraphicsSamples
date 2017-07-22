include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_library(NvAssetLoader
    #android/NvAssetLoaderAndroid.cpp
    linux/NvAssetLoaderLinux.cpp
    #win/NvAssetLoaderWin.cpp
)

target_include_directories(NvAssetLoader PRIVATE
    #${VK_SDK_PATH}/x86_64/include
    .
    ../../include
    ../../include/NsFoundation
    ../../include/NvFoundation
    #../../externals/include
    #../../externals/include/GLFW
    #../../include/NvVkUtil
)
