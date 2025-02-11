#!/usr/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/install/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/SDK/hikang/lib/x86_64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/SDK/orbbec/lib/x86_64

./install/bin/camera_run
