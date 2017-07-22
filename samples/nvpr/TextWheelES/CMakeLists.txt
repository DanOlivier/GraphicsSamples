list(APPEND SOURCES
	TextWheel.cpp
	render_font.cpp
	sRGB_math.cpp
	cg4cpp_xform.cpp
)
custom_add_sample(TextWheelES ${SOURCES})

target_link_libraries(TextWheelES 
	cg4cpp
)
