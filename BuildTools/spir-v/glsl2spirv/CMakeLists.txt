add_executable(glsl2spirv glsl2spirv.cpp)
#target_include_directories(glsl2spirv /usr/local/include)
target_link_libraries(glsl2spirv shaderc_combined  ${GLSLANG_LIBRARIES} ${SPIRV_TOOLS_LIBRARIES} pthread)