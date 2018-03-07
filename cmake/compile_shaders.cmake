function(link_assets EXAMPLE_NAME)
    if (NOT ARGN)
        return()
    endif()
    #message("ASSETS:")
    #foreach(f ${ARGN})
    #    message("\t- ${f}")
    #endforeach(f)
    foreach(ASSET ${ARGN})
        set(input_file ${CMAKE_CURRENT_SOURCE_DIR}/${ASSET})
        get_filename_component(ASSET_DIR ${ASSET} DIRECTORY)
        get_filename_component(ASSET_NAME ${ASSET} NAME)
        set(output_file ${CMAKE_CURRENT_BINARY_DIR}/${ASSET})
        # Must do this in two steps to propagate value
        set(all_assets ${all_assets} ${output_file})
        set(all_assets ${all_assets} PARENT_SCOPE)
        #message("Generating: ${input_file} -> ${output_file}")
        add_custom_command(
            OUTPUT ${output_file} #POST_BUILD
            COMMAND mkdir -p ${ASSET_DIR}
            #COMMAND cp ${input_file} ${output_file} DEPENDS ${input_file}
            COMMAND ln -s ${input_file} -r -f ${ASSET}
            DEPENDS ${input_file}
            COMMENT "Linking ${output_file} to asset ${ASSET}"
        )
    endforeach()
    add_custom_target(linkassets-${EXAMPLE_NAME} ALL DEPENDS ${all_assets})
    add_dependencies(${EXAMPLE_NAME} linkassets-${EXAMPLE_NAME})
endfunction()

function(compile_shaders _target)
    if(NOT ARGN)
        return()
    endif()
    #message("SHADERS:")
    #foreach(f ${ARGN})
    #    message("\t- ${f}")
    #endforeach(f)
    foreach(SHADER ${ARGN})
        #get_filename_component(FILE_NAME ${SHADER} NAME_WE) # longest extension
        string(REGEX REPLACE "\\.[^.]*$" "" FILE_NAME ${SHADER}) # shortest extension
        get_filename_component(FILE_DIR ${FILE_NAME} DIRECTORY)
        string(REGEX REPLACE "src_shaders" "shaders" FILE_DIR ${FILE_DIR}) # shortest extension
        get_filename_component(FILE_NAME ${FILE_NAME} NAME) # without directory

        set(output_file ${FILE_DIR}/${FILE_NAME}.nvs)

        # Must do this in two steps to propagate value
        set(compiled_shaders ${compiled_shaders} ${output_file})
        set(compiled_shaders ${compiled_shaders} PARENT_SCOPE)
        add_custom_command(
            OUTPUT ${output_file}
            COMMAND mkdir -p ${FILE_DIR}
            COMMAND "$<TARGET_FILE:glsl2spirv>" -o ${output_file} ${CMAKE_CURRENT_SOURCE_DIR}/${SHADER}
            DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${SHADER}
            COMMENT "Generating ${output_file} from ${SHADER}"
        )
    endforeach()
    add_custom_target(shaders-${_target} ALL DEPENDS ${compiled_shaders})
    add_dependencies(${_target} shaders-${_target})
endfunction()

