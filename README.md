# Genlica

<p align="center">
    <a href="https://gitlab.com/xgqt/genlica/pipelines">
        <img src="https://gitlab.com/xgqt/genlica/badges/master/pipeline.svg">
    </a>
    <a href="https://gitlab.com/xgqt/genlica/commits/master.atom">
        <img src="https://img.shields.io/badge/feed-atom-orange.svg">
    </a>
    <a href="./LICENSE">
        <img src="https://img.shields.io/badge/license-GPLv3-blue.svg">
    </a>
</p>

Gentoo replicator


# About

Those are the setting i find sane for a general use high performance gentoo workstation.


# Dependencies

## Any stow implementation

- stow
- xstow
- pystow


# Installation

## Git

As root:

```sh
mkdir -p /opt/genlica
cd /opt/genlica
git clone --recursive --verbose https://gitlab.com/xgqt/genlica
cd genlica
bash install
```


## Gentoo

As root:

```sh
emerge -1nv app-eselect/eselect-repository
eselect repository enable myov
emaint sync -r myov
emerge -av --autounmask app-portage/genlica
```


# Explanation

## test.sh

The [test.sh](./test.sh) script has a .sh extension to make it stand out,
also it will be removed while installing [genlica](https://gitlab.com/xgqt/genlica) from [myov](https://gitlab.com/xgqt/myov) overlay.
