#!/bin/sh
/usr/bin/find lib \
    -type f \
    -iname '*.c' \
    -print0 |
    xargs \
        -0 \
        -n1 \
        splint
