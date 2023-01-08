#!/usr/bin/env bash


if [ -e kernel/Makefile ]; then
    MAKEFLAG="make"
fi

if [ "${MAKEFLAG}" = "make" ] ; then
    echo build clean
    (cd kernel && make clean)
fi

