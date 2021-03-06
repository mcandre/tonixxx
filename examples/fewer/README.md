# fewer: because `less` is `more`

The fewer command line tool navigates files one byte at a time, printing the next byte and the next as a hexadecimal pair. It's not particularly useful compared to `od`.

# EXAMPLE

```console
$ fewer
> l README.md
> n
23
> n
20
> n
66
> p 23
#
> q
$
```

Note that load (`l`) file path is relative to the current working directory.

See the `h` command for more information.

# DOCUMENTATION

https://mcandre.github.io/tonixxx/examples/fewer/

# LICENSE

FreeBSD

# BUILD

```console
$ tonixxx boil
```

# CLEAN

```console
$ tonixxx clean
```

# PROVISIONING

See `buildbot-src` for more information about buildbot provisioning.
