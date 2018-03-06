custom_add_sample(ComputeParticles 
	ParticleSystem.cpp
	ComputeParticles.cpp
	noise.cpp
SHADERS
	assets/shaders/renderVS.glsl
	assets/shaders/renderFS.glsl
	assets/shaders/particlesCS.glsl
)

include_directories(
    assets/shaders	# contains uniform.h
)
