list(APPEND SOURCES 
	ParticleUpsampling
	ParticleSystem.cpp
	SceneRenderer.cpp
	IceRevisitedRadix.cpp
	Upsampler.cpp
	ParticleUpsampling.cpp
	ParticleRenderer.cpp
)

custom_add_sample(ParticleUpsampling ${SOURCES})
