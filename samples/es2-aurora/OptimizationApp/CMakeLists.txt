list(APPEND SOURCES 
	ParticleSystem.cpp
	scene.cpp
	SceneRenderer.cpp
	Terrain.cpp
	IceRevisitedRadix.cpp
	Upsampler.cpp
	OptimizationApp.cpp
	utils.cpp
	ParticleRenderer.cpp
)
custom_add_sample(OptimizationApp ${SOURCES})
