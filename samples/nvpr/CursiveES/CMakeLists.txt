list(APPEND SOURCES
	this_is_crazy.cpp
	Cursive.cpp
	cg4cpp_xform.cpp
)
custom_add_sample(CursiveES ${SOURCES})

target_link_libraries(CursiveES 
	cg4cpp
)
