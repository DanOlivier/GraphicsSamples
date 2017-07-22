list(APPEND SOURCES
	ShapedText.cpp
	PathSampleApp.cpp
	sRGB_math.cpp
	cg4cpp_xform.cpp
)
custom_add_sample(ShapedTextES ${SOURCES})

pkg_check_modules(FT freetype2 REQUIRED)
#PrintVars(FT)

pkg_check_modules(HB harfbuzz REQUIRED)
#PrintVars(HB)

target_compile_options(ShapedTextES PRIVATE 
    -I${FT_INCLUDE_DIRS}
	-I${HB_INCLUDE_DIRS}
	-I${CMAKE_SOURCE_DIR}/extensions/externals/src/ucdn
)

target_link_libraries(ShapedTextES 
	cg4cpp
)
