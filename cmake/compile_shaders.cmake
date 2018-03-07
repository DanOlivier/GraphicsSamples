function(compile_shaders _target)
    if(NOT ARGN)
        return()
    endif()
    foreach(GLSL ${ARGN})
        #get_filename_component(FILE_NAME ${GLSL} NAME_WE) # longest extension
        string(REGEX REPLACE "\\.[^.]*$" "" FILE_NAME ${GLSL}) # shortest extension
        get_filename_component(FILE_NAME ${FILE_NAME} NAME) # without directory

        set(output_file shaders/${FILE_NAME}.nvs)

        # Must do this in two steps to propagate value
        set(compiled_shaders ${compiled_shaders} ${output_file})
        set(compiled_shaders ${compiled_shaders} PARENT_SCOPE)
        add_custom_command(
            OUTPUT ${output_file}
            COMMAND mkdir -p shaders
            COMMAND "$<TARGET_FILE:glsl2spirv>" -o ${output_file} ${CMAKE_CURRENT_SOURCE_DIR}/${GLSL}
            DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${GLSL}
            COMMENT "Generating ${output_file} from ${GLSL}"
        )
    endforeach()
    add_custom_target(shaders-${_target} ALL DEPENDS ${compiled_shaders})
    add_dependencies(${_target} shaders-${_target})
endfunction()
