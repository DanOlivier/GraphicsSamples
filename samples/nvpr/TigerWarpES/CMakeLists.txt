list(APPEND SOURCES
	TigerWarp.cpp
	tiger.cpp
	cg4cpp_xform.cpp
)
custom_add_sample(TigerWarpES ${SOURCES})

target_link_libraries(TigerWarpES 
	cg4cpp
)
