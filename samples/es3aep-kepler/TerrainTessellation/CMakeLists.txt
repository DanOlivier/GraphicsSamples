custom_add_sample(TerrainTessellation
    TerrainTessellation.cpp
    noise.cpp
SHADERS
    assets/shaders/terrain_vertex.glsl
    assets/shaders/sky_fs.glsl
    assets/shaders/generateTerrain_vs.glsl
    assets/shaders/wireframe_geom.glsl
    assets/shaders/terrain_fragment.glsl
    assets/shaders/fragment_wireframe.glsl
    assets/shaders/terrain_tessellation.glsl
    assets/shaders/dnoise.glsl
    assets/shaders/terrain.glsl
    assets/shaders/noise3D.glsl
    assets/shaders/generateTerrain_fs.glsl
    assets/shaders/sky_vs.glsl
    assets/shaders/terrain_control.glsl
    assets/shaders/noise.glsl
)

include_directories(
    assets/shaders  # contains uniform.h
)