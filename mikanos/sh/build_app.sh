#!/usr/bin/env bash


if [ -d apps ]; then
    APPFLAG="app"
    export APP_DIR="apps"

    for MK in $(ls apps/*/Makefile); do
        APP_DIR=$(dirname $MK)
        APP=$(basename $APP_DIR)
        make -C $APP_DIR $APP
    done
fi
