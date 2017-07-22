list(APPEND SOURCES
    TerrainTessellation.cpp
	noise.cpp
)
custom_add_sample(TerrainTessellation ${SOURCES})

include_directories(
    assets/shaders
)