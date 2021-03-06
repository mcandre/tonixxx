# tonixxx: a virtual distillery for cross-compiling binaries

![tonixxx-logo](https://raw.githubusercontent.com/mcandre/tonixxx/master/tonixxx.png)

# EXAMPLE

```console
$ cd examples/fewer

$ tonixxx boil
2018/12/30 23:22:56 Artifacts merged to ~/.tonixxx/fewer/bin

$ tree ~/.tonixxx/fewer/bin
~/.tonixxx/fewer/bin
├── freebsd-amd64
│   └── fewer
├── linux-glibc-2.24-amd64
│   └── fewer
├── linux-glibc-2.28-arm64
│   └── fewer
├── macos-amd64
│   └── fewer
├── windows-amd64
│   └── fewer.exe
```

# DOWNLOAD

https://github.com/mcandre/tonixxx/releases

# API DOCUMENTATION

https://godoc.org/github.com/mcandre/tonixxx

# ABOUT

tonixxx assists developers in cross-compiling software projects. No need for dedicated hardware, nor dual booting, nor configuring obscure toolchains. Instead, tonixxx pours your code through arrays of Vagrant boxes, yielding robust, reliable binaries targeting assorted operating system kernel environments.

tonixxx chips away at integration surprises, testing the very limits of portability! For example, the C application `fewer` is written to closely match the C89/C99 standards, as opposed to newer standards, in order to support Windows and MirBSD builds. Without tonixxx, developers must rely on dedicated contributors to report any issues, compared to spotting issues early in the development process.

C89/C99 are just one way among many to structure your applications. If you really want to emphasize C11 and higher, then you can elect to drop Windows and MirBSD support. Remember, these are simply examples. tonixxx itself is agnostic of programming language and platforms, giving you the power to decide which software stacks and environments you want to end up using. It's great for automating software ports from your laptop or CI server!

See the `examples` directory for more demonstrative templates for building application ports.

* C: `fewer`
* C++: `palindrome`
* D: `potato`
* Haskell: `mo`
* Rust: `bronze`

## How to cross-compile your project with tonixxx

1. List your build steps in a `tonixxx.yaml` file.
2. Label your build bots.
3. Run `tonixxx boil`.

See [examples/](https://github.com/mcandre/tonixxx/tree/master/examples) for more details on configuring tonixxx.yaml recipes and provisioning build bots for a variety of programming languages.

See `tonixxx -help` for more information on tonixxx invocation syntax.

Finally, `sudo` may be requisite for producing buildbot boxes for alternate architecture VM's, a known issue with [vagrant-libvirt](https://github.com/vagrant-libvirt/vagrant-libvirt/pull/928), but critically, `sudo` should be avoided when importing or running buildbots.

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com/)
* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back)
* Relevant hypervisors for your configured Vagrant boxes (e.g. VirtualBox, VMware, qemu, Hyper-V)
* Your choice of Vagrant boxes for targeted compilation, with synced folders enabled using rsync.
* Sufficient available RAM and disk space for your Vagrant boxes

## Recommended

* [VirtualBox + extension pack](https://www.virtualbox.org/wiki/Downloads)
* [VMware](https://www.vmware.com/)
* [qemu](https://www.qemu.org/) 2.12+
* [KVM](https://wiki.qemu.org/Features/KVM)
* [OpenBIOS](https://www.openfirmware.info/OpenBIOS)
* [openhackware](https://github.com/qemu/openhackware)
* [qemu-skiboot](https://github.com/qemu/skiboot)
* [libguestfs-tools](http://libguestfs.org/)
* [vagrant-libvirt](https://github.com/vagrant-libvirt/vagrant-libvirt)
* [Taurine](https://itunes.apple.com/us/app/taurine/id960276676) (macOS), [Caffeine](http://www.zhornsoftware.co.uk/caffeine/) (Windows), [Caffeine](https://launchpad.net/caffeine) (Linux) can prevent hibernation during any long builds
* [tree](https://linux.die.net/man/1/tree)

# BUILDTIME REQUIREMENTS

* [Go](https://golang.org/) 1.11+

## Recommended

* [Docker](https://www.docker.com/)
* [Mage](https://magefile.org/) (e.g., `go get github.com/magefile/mage`)
* [goimports](https://godoc.org/golang.org/x/tools/cmd/goimports) (e.g. `go get golang.org/x/tools/cmd/goimports`)
* [golint](https://github.com/golang/lint) (e.g. `go get github.com/golang/lint/golint`)
* [errcheck](https://github.com/kisielk/errcheck) (e.g. `go get github.com/kisielk/errcheck`)
* [nakedret](https://github.com/alexkohler/nakedret) (e.g. `go get github.com/alexkohler/nakedret`)
* [shadow](golang.org/x/tools/go/analysis/passes/shadow/cmd/shadow) (e.g. `go get -u golang.org/x/tools/go/analysis/passes/shadow/cmd/shadow`)
* [goxcart](https://github.com/mcandre/goxcart) (e.g., `go get github.com/mcandre/goxcart/...`)
* [zipc](https://github.com/mcandre/zipc) (e.g. `go get github.com/mcandre/zipc/...`)
* [karp](https://github.com/mcandre/karp) (e.g., `go get github.com/mcandre/karp/...`)
* [Python](https://www.python.org/) 2

## INSTALL FROM REMOTE GIT REPOSITORY

```console
$ go get github.com/mcandre/tonixxx/...
```

(Yes, include the ellipsis as well, it's the magic Go syntax for downloading, building, and installing all components of a package, including any libraries and command line tools.)

## INSTALL FROM LOCAL GIT REPOSITORY

```console
$ mkdir -p "$GOPATH/src/github.com/mcandre"
$ git clone https://github.com/mcandre/tonixxx.git "$GOPATH/src/github.com/mcandre/tonixxx"
$ cd "$GOPATH/src/github.com/mcandre/tonixxx"
$ git submodule update --init
$ go install ./...
```

## UNINSTALL

```console
$ mage uninstall
```

## LINT

```console
$ mage lint
$ mage compile
```

## PORT

```console
$ mage port
```

# HONORABLE MENTIONS

* [CloudABI](https://nuxi.nl/) provides a C-level abstraction for applications to run on many different platforms.
* [libuv](https://libuv.org/) provides a cross-platform abstraction layer for C/C++ applications.
* Cross-platform [toolchains](https://elinux.org/Toolchains) can be configured, though the process is fairly masochistic. May involve chroots.
* [Docker](https://www.docker.com/) is a fantastic resource for projects targeting the Linux kernel (from different host operating systems!)
* [Go](https://golang.org/) provides superb out-of-the-box cross-compilation features. As a matter of fact, tonixxx was inspired as a workaround in order to support cross-compilation for non-Go projects, including Rust, C, and C++.

# SEE ALSO

* [xgo](https://github.com/karalabe/xgo) automates cross-compiling Go applications, including cgo apps with native dependencies.
* [goxcart](https://github.com/mcandre/goxcart) is a lean option for porting Go projects
* [remy](https://github.com/mcandre/remy) is a lean option for porting Rust projects
* [cartel](https://github.com/mcandre/cartel) provides Docker images for C/C++ cross-compilation toolchains

# LICENSE

FreeBSD

# DISCLAIMER

tonixxx is not magic, but simply a Go wrapper for Vagrant. It won't do the hard work of rewriting your application to support more platforms, but it will lower some barriers to cross-platform development.

* Doesn't rely on soft links
* Doesn't rely on sh/bat scripts
* Doesn't erase your code when `vagrant rsync-back`ing
* Doesn't force you to use any particular build tools or build workflows
* Does accelerate development and testing
* Does support UNIX and Windows hosts, as well as UNIX and Windows targets
* Does support configuration commenting
* Works best with *reasonably modern* guests featuring preemptive multitasking
* WSL hosts may present [difficulties](https://github.com/hashicorp/vagrant/issues/12065)

Good luck and keep coding!
