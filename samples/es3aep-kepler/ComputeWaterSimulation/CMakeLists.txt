list(APPEND SOURCES
	WaveSimThread.cpp
	ComputeWaterSimulation.cpp
	WaveSim.cpp
	WaveSimRenderer.cpp
	noise.cpp
	Wave.cpp
)
custom_add_sample(ComputeWaterSimulation ${SOURCES})
