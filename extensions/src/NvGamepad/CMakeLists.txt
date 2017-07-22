include_directories(${CMAKE_CURRENT_SOURCE_DIR}/linux)

add_library(NvGamepad
	#android/NvGamepadAndroid.cpp
	linux/NvGamepadLinux.cpp
	#win/NvGamepadXInput.cpp
)

target_include_directories(NvGamepad PRIVATE
    #${VK_SDK_PATH}/x86_64/include
    .
    ../../include
    ../../include/NsFoundation
    ../../include/NvFoundation
    #../../externals/include
    #../../externals/include/GLFW
    #../../include/NvVkUtil
)

