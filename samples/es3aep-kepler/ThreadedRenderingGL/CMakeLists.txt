list(APPEND SOURCES
    VertexFormatBinder.cpp
	BindlessTextureHelper.cpp
	NvSharedVBOGL_Pooled.cpp
	ThreadedRenderingGL.cpp
	NvMultiDrawModelSet.cpp
	School.cpp
	NvInstancedModelExtGL.cpp
	NvSharedVBOGL_MappedSubRanges.cpp
	NvSharedVBOGL_Orphaning.cpp
)
custom_add_sample(ThreadedRenderingGL ${SOURCES})
