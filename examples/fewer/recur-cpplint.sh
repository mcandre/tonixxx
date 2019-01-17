#!/bin/sh
/usr/bin/find lib \
    -type f \
    \( \
        -iname '*.[ch]pp' -o \
        -iname '*.cc' -o \
        -iname '*.hh' -o \
        -iname '*.[ch]xx' -o \
        -iname '*.[ch]++' -o \
        -iname '*.[ch]' \
    \) \
    -print0 |
    xargs \
        -0 \
        -n1 \
        cpplint
