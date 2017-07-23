#include_directories(${CMAKE_CURRENT_SOURCE_DIR})

set(glsl2spirv ${CMAKE_SOURCE_DIR}/BuildTools/spir-v/bin/glsl2spirv)
file(GLOB GLSLC_SOURCE_FILES "src_shaders/*.glslc")

foreach(GLSLC ${GLSLC_SOURCE_FILES})
  get_filename_component(FILE_NAME ${GLSLC} NAME_WE)
  message("GLSLC: ${GLSLC}")
  add_custom_command(
    OUTPUT shaders/${FILE_NAME}.h shaders/${FILE_NAME}.cpp
    COMMAND mkdir -p shaders
    COMMAND ${glsl2spirv} -cpp ${FILE_NAME} -o shaders/${FILE_NAME} ${GLSLC}
    DEPENDS ${GLSLC}
  )
  message("GLSLC: ${GLSLC}, shaders/${FILE_NAME}.h, shaders/${FILE_NAME}.cpp")
endforeach()

list(APPEND SOURCES
    ${CMAKE_CURRENT_BINARY_DIR}/shaders/graphicFrame.cpp
    ${CMAKE_CURRENT_BINARY_DIR}/shaders/graphic.cpp
    ${CMAKE_CURRENT_BINARY_DIR}/shaders/fontOutline.cpp
    ${CMAKE_CURRENT_BINARY_DIR}/shaders/font.cpp
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
    ${CMAKE_CURRENT_BINARY_DIR}
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
