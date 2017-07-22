include_directories(${CMAKE_CURRENT_SOURCE_DIR})

#list(APPEND SOURCES 
#	android/MainAndroid.cpp
#	android/NvThreadAnd.cpp
#	android/NvAndroidWinUtil.cpp
#	android/EngineAndroid.cpp
#)

list(APPEND SOURCES 
    linux/NvThreadPosix.cpp
    linux/MainLinux.cpp
)

#list(APPEND SOURCES 
#	win/MainWin32.cpp
#	win/NvThreadWin.cpp
#)

list(APPEND SOURCES 
    glfw/InputCallbacksGLFW.cpp
    gl/NvAppContextGL.cpp
    gl/NvSampleAppGL.cpp
)

add_library(NvAppBase
    ${SOURCES}
    NvFramerateCounter.cpp
    NvSampleApp.cpp
    NvFoundationInit.cpp
    NvInputTransformer.cpp
    NvInputHandler_CameraFly.cpp
    NvAppBase.cpp
)

target_include_directories(NvAppBase PRIVATE
    #${VK_SDK_PATH}/x86_64/include
    .
    ..
    ../../include
    ../../include/NsFoundation
    ../../include/NvFoundation
    #../../externals/include
    #../../externals/include/GLFW
    #../../include/NvVkUtil
)

