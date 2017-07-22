include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_library(NvUI
	NvUIButton.cpp
	NvUIText.cpp
	NvUIValueText.cpp
	NvBitFont.cpp
	NvTweakVar.cpp
	NvUIGraphicFrame.cpp
	NvUIGraphic.cpp
	NvUISlider.cpp
	NvUIPopup.cpp
	NvUIWindow.cpp
	NvTweakBar.cpp
	NvUIContainer.cpp
	NvUITexture.cpp
	NvGestureDetector.cpp
	NvEmbeddedAsset.cpp
	NvUIValueBar.cpp
	NvUI.cpp
)

target_include_directories(NvUI PRIVATE
    #${VK_SDK_PATH}/x86_64/include
    .
    ../../include
    ../../include/NsFoundation
    ../../include/NvFoundation
    #../../externals/include
    #../../externals/include/GLFW
    #../../include/NvVkUtil
)

