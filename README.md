# libhoudini_bluestacks
libhoudini.so + libnb.so from BlueStacks. **libnb.so library resolves performance degradation on AMD processors.** On Waydroid, for games that are not compatible with libndk.so, this can be used instead. libhoudini initialization is different on BlueStacks compared to houdini build installed by waydroid_script, so /etc/binfmt_misc from waydroid_script's houdini build has been included.
Usage instructions for Waydroid:
1. git clone the repository
2. Stop Waydroid if it is running
3. Extract contents of `system/` to `/var/lib/waydroid/overlay/system`
4. In `/var/lib/waydroid/waydroid_base.prop` add/change `ro.dalvik.vm.native.bridge` to `libnb.so`. Setting this to `libhoudini.so` will prevent the wrapper library from taking effect and performance on AMD will be degraded.
5. (optional) In `/var/lib/waydroid/waydroid_base.prop` change `ro.hardware.gralloc` to `minigbm_gbm_mesa` for improving performance and resolving graphical glitches on RDNA3 + Vulkan.
