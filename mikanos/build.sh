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

if [ -e kernel/Makefile ]; then
    MAKEFLAG="make"
fi

if [ "${1:-}" = "kernel" ] && [ "${MAKEFLAG}" = "make" ] ; then
    echo build kernel
    (cd kernel && make -j$(nproc))
elif [ "${1:-}" = "clean" ] && [ "${MAKEFLAG}" = "make" ]; then
    echo build clean
    (cd kernel && make clean)
elif [ "${MAKEFLAG}" = "make" ]; then
    echo build all
    (cd kernel && make -j$(nproc))
    pushd $HOME/edk2
    rm MikanLoaderPkg
    ln -s $DAY/MikanLoaderPkg ./
    source edksetup.sh
    # rm -r Build
    touch MikanLoaderPkg/Main.c
    build
    popd
fi
