list(APPEND SOURCES
	TerrainSim.cpp
	TextureArrayTerrain.cpp
	TerrainGenerator.cpp
	TerrainSimRenderer.cpp
	TerrainSimThread.cpp
)
custom_add_sample(TextureArrayTerrain ${SOURCES})
