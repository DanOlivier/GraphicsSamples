list(APPEND SOURCES
	ParticleSystem.cpp
	FeedbackParticlesScene.cpp
	Utils.cpp
	FeedbackParticlesApp.cpp
	TextureUtils.cpp
)
custom_add_sample(FeedbackParticlesApp ${SOURCES})
