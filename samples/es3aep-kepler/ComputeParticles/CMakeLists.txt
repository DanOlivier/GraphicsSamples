custom_add_sample(ComputeParticles 
	ParticleSystem.cpp
	ComputeParticles.cpp
	noise.cpp
ASSETS
	assets/shaders/particlesCS.glsl
	assets/shaders/renderFS.glsl
	assets/shaders/renderVS.glsl
	assets/shaders/uniforms.h
)

include_directories(
    assets/shaders	# contains uniform.h
)
