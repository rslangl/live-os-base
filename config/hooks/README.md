# hooks

Commands to be run in the chroot and binary stages of the build in order to customize the image.

* `live/`: For live image builds only
* `normal/`: For regular system image builds only

Files in these directories must be executable, and have a `.hook.chroot` suffix.

