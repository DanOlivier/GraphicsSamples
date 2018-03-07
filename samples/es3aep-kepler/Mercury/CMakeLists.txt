list(APPEND SOURCES
	ParticleSystem.cpp
	ShaderPipeline.cpp
	Mercury.cpp
	MCPolygonizer.cpp
ASSETS
	assets/shaders/cubesCS.glsl
	assets/shaders/particlesCS.glsl
	assets/shaders/renderPartFS.glsl
	assets/shaders/renderPartGS.glsl
	assets/shaders/renderPartVS.glsl
	assets/shaders/renderQuadFS.glsl
	assets/shaders/renderQuadVS.glsl
	assets/shaders/renderSurfFS.glsl
	assets/shaders/renderSurfGS.glsl
	assets/shaders/renderSurfVS.glsl
	assets/shaders/renderVS.glsl
	assets/shaders/skyboxFS.glsl
	assets/shaders/skyboxVS.glsl
	assets/shaders/uniforms.h

	assets/textures/sky_cube.dds
)
custom_add_sample(Mercury ${SOURCES})
