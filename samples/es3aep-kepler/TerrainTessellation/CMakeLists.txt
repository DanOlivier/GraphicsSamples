custom_add_sample(TerrainTessellation
    TerrainTessellation.cpp
    noise.cpp
ASSETS
    assets/shaders/dnoise.glsl
    assets/shaders/fragment_wireframe.glsl
    assets/shaders/generateTerrain_fs.glsl
    assets/shaders/generateTerrain_vs.glsl
    assets/shaders/noise.glsl
    assets/shaders/noise3D.glsl
    assets/shaders/sky_fs.glsl
    assets/shaders/sky_vs.glsl
    assets/shaders/terrain_control.glsl
    assets/shaders/terrain_fragment.glsl
    assets/shaders/terrain_tessellation.glsl
    assets/shaders/terrain_vertex.glsl
    assets/shaders/terrain.glsl
    assets/shaders/wireframe_geom.glsl
ASSETS
    assets/shaders/uniforms.h
)

include_directories(
    assets/shaders  # contains uniform.h
)