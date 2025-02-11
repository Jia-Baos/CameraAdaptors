#!/usr/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/seer/Project-CPP/CameraAdaptors/install/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/seer/Project-CPP/CameraAdaptors/SDK/hikang/lib/x86_64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/seer/Project-CPP/CameraAdaptors/SDK/orbbec/lib/x86_64

./install/bin/camera_run
