list(APPEND SOURCES
	ShaderObject.cpp
	BlurShaderGenerator.cpp
	rgbe.cpp
	HDR.cpp
	HDRImages.cpp
	FileLoader.cpp
	RenderTexture.cpp
	VertexBufferObject.cpp
)
custom_add_sample(HDR ${SOURCES})
