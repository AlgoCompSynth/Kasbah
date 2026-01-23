# Kasbah
A command line development container for the Bastl Kastle 2 SDK

## Project overview

Kasbah is a container-based development environment for the
[Bastl Kastle2](https://bastl-instruments.com/instruments/kastle-2-alchemist) and
[Bastl Citadel](https://bastl-instruments.com/eurorack/modules/citadel-alchemist)
musical instruments. I developed Kasbah on a
[Bluefin](https://projectbluefin.io) system with an NVIDIA RTX 3090 GPU, but you
can install it on most 64-bit Linux systems, including a Raspberry Pi 4 or 5
running Raspberry Pi OS. I supply hosting install scripts for

- Fedora 43,
- Debian 13 `trixie`,
- Ubuntu 24.04 LTS `noble`, and
- openSUSE Tumbleweed.

[Distrobox](https://distrobox.it/) is used for container hosting. The Kasbah
container can be built for either CPU only (the default) or CPU plus an
NVIDIA GPU. It can probably be made to work on AMD GPUs but I don't have
one to test on. Forks are welcomed for that!

The Kasbah container runs Debian 13 `trixie` for maximum compatibility with
Raspberry 4 and 5 systems. Inside the container, you have access to your
host home directory, your host devices, including of course the Bastl device
USB connection and any NVIDIA GPU. However, the container also has its own
`$HOME` directory to avoid conflicting caches and configuration files with
the host!

The Kasbah container includes:

- Terminal-oriented utilities - the [Starship](https://starship.rs/) shell
prompt, `git`, `vim`, `neovim`, `time`, `tree`, `info`, `plocate`, `lynx`,
`apt-file`, `speedtest-cli`, the
[CascaydiaCove](https://www.nerdfonts.com/font-downloads) nerd font,
and a command to start a host GUI app,
- The Bastl Kastle 2 SDK, of course, and
- The [`ollama`](https://ollama.com/), [`Aider`](https://aider.chat/), and
[DeepSeek-Coder-V2](https://github.com/deepseek-ai/DeepSeek-Coder-V2) AI
programming assist tools.

## Getting started

### Container hosting

### Installing the container

## Getting the Bastl Kastle 2 SDK

## Usage overview

## Coding assistant tools

## Contributing

Forks are welcomed / encouraged; I'm only one guy and this is not my only
project. So are issues including feature requests and especially
documentation questions. But I don't have the bandwidth to deal with pull
requests. I'll be happy to point people to your enhanced forks, though.

## [Kasbah - Wikipedia](https://en.wikipedia.org/wiki/Kasbah)
