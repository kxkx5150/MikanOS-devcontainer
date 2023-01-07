#!/usr/bin/env bash


if [ -d resource ]; then
    export RESOURCE_DIR=resource
fi

if [ -d apps ]; then
    export APP_DIR="apps"
fi

# xhost +local: 
# Error "gtk initialization failed" 
if [ "${APPFLAG}" = "app" ] ; then
    xhost +
    sleep 1
    MIKANOS_DIR=$PWD $HOME/osbook/devenv/run_mikanos.sh
    echo run_mikanos
    sleep 1
    xhost -
else
    xhost +
    sleep 1
    $HOME/osbook/devenv/run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi kernel/kernel.elf
    echo run_qemu
    sleep 1
    xhost -
fi

