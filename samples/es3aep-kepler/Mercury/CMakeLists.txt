list(APPEND SOURCES
	ParticleSystem.cpp
	ShaderPipeline.cpp
	Mercury.cpp
	MCPolygonizer.cpp
SHADERS
	assets/shaders/renderVS.glsl
	assets/shaders/renderQuadVS.glsl
	assets/shaders/renderQuadFS.glsl
	assets/shaders/renderSurfVS.glsl
	assets/shaders/renderSurfFS.glsl
	assets/shaders/skyboxFS.glsl
	assets/shaders/renderPartVS.glsl
	assets/shaders/cubesCS.glsl
	assets/shaders/renderSurfGS.glsl
	assets/shaders/skyboxVS.glsl
	assets/shaders/renderPartFS.glsl
	assets/shaders/renderPartGS.glsl
	assets/shaders/particlesCS.glsl
)
custom_add_sample(Mercury ${SOURCES})
