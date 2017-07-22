list(APPEND SOURCES
	rgbe.cpp
	ShaderPipeline.cpp
	HDRImages.cpp
	FileLoader.cpp
	aces.cpp
	VisualizeHDR.cpp
)
custom_add_sample(VisualizeHDR ${SOURCES})
