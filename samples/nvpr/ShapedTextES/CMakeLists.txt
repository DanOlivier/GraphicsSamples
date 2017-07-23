list(APPEND SOURCES
	ShapedText.cpp
	PathSampleApp.cpp
	sRGB_math.cpp
	cg4cpp_xform.cpp
)
custom_add_sample(ShapedTextES ${SOURCES})

target_compile_options(ShapedTextES PRIVATE 
    -I${FT_INCLUDE_DIRS}
	-I${HB_INCLUDE_DIRS}
	-I${CMAKE_SOURCE_DIR}/extensions/externals/src/ucdn
)

target_link_libraries(ShapedTextES 
	${FT_LIBRARIES}
	${HB_LIBRARIES}
	cg4cpp
	ucdn
)

#file(GLOB_RECURSE ShapedTextES_ASSETS "assets/" "*")
#add_custom_command(TARGET ShapedTextES
#    PRE_BUILD
#    COMMAND install -m 644 ${ShapedTextES_ASSETS} .
#    WORKING_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}"
#    COMMENT "install ShapedTextES runtime assets"
#)

add_compile_options(ShapedTextES -O0)