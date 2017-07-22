list(APPEND SOURCES
	ParticleSystem.cpp
	ComputeParticles.cpp
	noise.cpp
)
custom_add_sample(ComputeParticles ${SOURCES})

include_directories(
    assets/shaders
)
