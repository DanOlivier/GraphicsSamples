list(APPEND SOURCES
    vk_nvx_device_generated_commands.cpp
    BasicDeviceGeneratedCommandsVk.cpp
)
custom_add_sample(BasicDeviceGeneratedCommandsVk ${SOURCES})
