list(APPEND SOURCES
    SoftShadowsRenderer.cpp
	KnightModel.cpp
	RigidMesh.cpp
	PodiumModel.cpp
	SoftShadows.cpp
)
custom_add_sample(SoftShadows ${SOURCES})
