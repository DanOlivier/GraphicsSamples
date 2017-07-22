list(APPEND SOURCES
    ThreadedRenderingVk.cpp
	NvInstancedModelExtVK.cpp
	School.cpp
	NvInstancedModelExtGL.cpp
	NvSharedVBOVK.cpp
	NvSharedVBOGL.cpp
)
custom_add_sample(ThreadedRenderingVk ${SOURCES})
