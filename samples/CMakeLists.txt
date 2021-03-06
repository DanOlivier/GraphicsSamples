include(CMakeParseArguments)

add_custom_target(run-all)

function(custom_add_sample _target)
    #cmake_parse_arguments(ARG "" "WORDS" "" ${ARGN})
    # use ${ARG_WORD}
    list(REMOVE_AT ARGV 0)
    add_executable(${_target}
        ${ARGV}
    )

    target_compile_definitions(${_target} PRIVATE 
        -DGW_APP_NAME="${_target}"
    )

    include_directories(
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_SOURCE_DIR}/extensions/include
        ${CMAKE_SOURCE_DIR}/extensions/externals/include
        ${CMAKE_SOURCE_DIR}/extensions/include/NvVkUtil
        ${CMAKE_SOURCE_DIR}/extensions/include/NsFoundation
        ${CMAKE_SOURCE_DIR}/extensions/include/NvFoundation
    )

    target_link_libraries(${_target}
        -Wl,--start-group 
            NvAppBase
            NvVkUtil
            NsFoundation
            NvAssetLoader
            NvModel
            NvGLUtils
            NvGamepad
            NvImage
            NvUI
        -Wl,--end-group
        Half
        glfw
        GLEW
        GL
        pthread
        dl
        vulkan
    )


    add_custom_target(run-${_target}
        COMMAND ${CMAKE_CURRENT_BINARY_DIR}/${_target}
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${_target}
    )
    add_dependencies(run-all run-${_target})

    set(glsl2spirv ${CMAKE_SOURCE_DIR}/BuildTools/spir-v/bin/glsl2spirv)
    file(GLOB GLSL_SOURCE_FILES "assets/src_shaders/*.glsl")

    foreach(GLSL ${GLSL_SOURCE_FILES})
        get_filename_component(FILE_NAME ${GLSL} NAME_WE)
        set(output_file assets/shaders/${FILE_NAME}.nvs)
        message("Found a GLSL shader file: ${GLSL}")
        message("Preparing to generate: ${output_file}")
        add_custom_command(
            OUTPUT ${output_file}
            COMMAND mkdir -p assets/shaders
            COMMAND ${glsl2spirv} -o ${output_file} ${GLSL}
            DEPENDS ${GLSL}
            COMMENT "Generating ${output_file} from ${GLSL}"
        )
    endforeach()
endfunction()

add_subdirectory(es2-aurora/Bloom)
add_subdirectory(es2-aurora/InstancedTessellation)
add_subdirectory(es2-aurora/InstancingApp)
add_subdirectory(es2-aurora/MotionBlur)
add_subdirectory(es2-aurora/OptimizationApp)
add_subdirectory(es2-aurora/ParticleUpsampling)
add_subdirectory(es2-aurora/SkinningApp)
add_subdirectory(es2-aurora/TextureArrayTerrain)

add_subdirectory(es3-kepler/FXAA)

add_subdirectory(es3aep-kepler/ComputeBasicGLSL)
add_subdirectory(es3aep-kepler/ComputeParticles)
add_subdirectory(es3aep-kepler/ComputeWaterSimulation)
add_subdirectory(es3aep-kepler/FeedbackParticlesApp)
add_subdirectory(es3aep-kepler/HDR)
add_subdirectory(es3aep-kepler/Mercury)
add_subdirectory(es3aep-kepler/MotionBlurAdvanced)
add_subdirectory(es3aep-kepler/SoftShadows)
add_subdirectory(es3aep-kepler/TerrainTessellation)
add_subdirectory(es3aep-kepler/ThreadedRenderingGL)
add_subdirectory(es3aep-kepler/VisualizeHDR)

add_subdirectory(gl4-kepler/BindlessApp)
add_subdirectory(gl4-kepler/DeferredShadingMSAA)
add_subdirectory(gl4-kepler/MultiDrawIndirect)
add_subdirectory(gl4-kepler/PathRenderingBasic)
add_subdirectory(gl4-kepler/WeightedBlendedOIT)

add_subdirectory(gl4-maxwell/BlendedAA)
add_subdirectory(gl4-maxwell/CascadedShadowMapping)
add_subdirectory(gl4-maxwell/ConservativeRaster)
add_subdirectory(gl4-maxwell/CubemapRendering)
add_subdirectory(gl4-maxwell/NormalBlendedDecal)
add_subdirectory(gl4-maxwell/NvCommandList)

add_subdirectory(nvpr/CursiveES)
add_subdirectory(nvpr/ShapedTextES)
add_subdirectory(nvpr/TextWheelES)
add_subdirectory(nvpr/Tiger3DES)
add_subdirectory(nvpr/TigerWarpES)

add_subdirectory(tutorial/Basic)

add_subdirectory(vk10-kepler/BasicDeviceGeneratedCommandsVk)
add_subdirectory(vk10-kepler/DedicatedAllocationVk)
add_subdirectory(vk10-kepler/HelloVulkan)
add_subdirectory(vk10-kepler/ModelTestVk)
add_subdirectory(vk10-kepler/ShuffleIntrinsicsVk)
add_subdirectory(vk10-kepler/SkinningAppVk)
add_subdirectory(vk10-kepler/ThreadedRenderingVk)
