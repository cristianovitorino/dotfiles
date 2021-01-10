#!/bin/bash

if ! gputemp=$(nvidia-smi --format=nounits,csv,noheader --query-gpu=temperature.gpu | xargs echo); then
    gputemp=0
fi
if [ "$gputemp" -gt 0 ]; then
    echo "$gputemp°C  "
else
    echo "$no NVIDIA driver installed"
fi