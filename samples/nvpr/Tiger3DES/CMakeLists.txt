list(APPEND SOURCES
	trackball.cpp
	tiger.cpp
	teapot.cpp
	render_font.cpp
	Tiger3D.cpp
	glut_teapot.cpp
	cg4cpp_xform.cpp
)
custom_add_sample(Tiger3DES ${SOURCES})

target_link_libraries(Tiger3DES 
	cg4cpp
)
