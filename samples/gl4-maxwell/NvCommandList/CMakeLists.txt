list(APPEND SOURCES
	nvcommandlist.cpp
	nvtoken.cpp
	statesystem.cpp
	basic-nvcommandlist.cpp
SHADERS
	assets/shaders/scene.frag.glsl
	assets/shaders/scene.geo.glsl
	assets/shaders/scene.vert.glsl
)
custom_add_sample(NvCommandList ${SOURCES})
