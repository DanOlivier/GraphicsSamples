#include_directories(${CMAKE_CURRENT_SOURCE_DIR})

list(APPEND SOURCES
    shaders/graphicFrame.cpp
    shaders/graphic.cpp
    shaders/fontOutline.cpp
    shaders/font.cpp
)

add_library(NvVkUtil
    ${SOURCES}
    NvAppContextVK.cpp
    NvAppWrapperContextVK.cpp
    NvSampleAppVK.cpp
    NvBitFontVK.cpp
    NvVkRenderTargetImpls.cpp
    NvAndVkWinUtil.cpp
    NvGLFWContextVK.cpp
    NvModelVK.cpp
    NvUITextureRenderVK.cpp
    NvPlatformVK.cpp
    NvAppContextAndVK.cpp
    NvMeshExtVK.cpp
    NvMaterialVK.cpp
    NvVkContext.cpp
    NvUIVK.cpp
    NvModelExtVK.cpp
    NvUIShadersVK.cpp
    NvQuadVK.cpp
    NvAppNativeContextVK.cpp
    NvVkUtil.cpp
    NvUIGraphicFrameVK.cpp
    NvUIGraphicVK.cpp
)

target_include_directories(NvVkUtil PRIVATE
    #${VK_SDK_PATH}/x86_64/include
    .
    ../../include
    ../../include/NsFoundation
    ../../include/NvFoundation
    #../../externals/include
    #../../externals/include/GLFW
    ../../include/NvVkUtil
)

target_compile_options(NvVkUtil PRIVATE
    -Wl,-L../../externals/linux64
    -Wl,-L${VK_SDK_PATH}/x86_64/lib
    -Wl,--unresolved-symbols=ignore-in-shared-libs
)

target_link_libraries(NvVkUtil
    vulkan
)

