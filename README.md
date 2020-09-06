# Genlica

<p align="center">
    <a href="https://gitlab.com/xgqt/genlica/pipelines">
        <img src="https://gitlab.com/xgqt/genlica/badges/master/pipeline.svg">
    </a>
    <a href="./LICENSE">
        <img src="https://img.shields.io/badge/license-ISC-blue.svg">
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

# Git

As root:

```sh
mkdir -p /opt/genlica
cd /opt/genlica
git clone --recursive --verbose https://gitlab.com/xgqt/genlica
cd genlica
bash install
```


# Gentoo

As root:

```sh
emerge -1nv app-eselect/eselect-repository
eselect repository enable myov
emaint sync -r myov
emerge -av --autounmask app-portage/genlica
```

