#!/usr/bin/env bash


DAY=$PWD

if [ -d resource ]; then
    export RESOURCE_DIR=resource
fi

if [ -d apps ]; then
    APPFLAG="app"
    export APP_DIR="apps"

    for MK in $(ls apps/*/Makefile); do
        APP_DIR=$(dirname $MK)
        APP=$(basename $APP_DIR)
        make -C $APP_DIR $APP
    done
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

