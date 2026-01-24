# Container Hosting

Kasbah was developed on
[Bluefin DX](https://projectbluefin.io/), a container-based
Linux using the GNOME desktop. Among other features,
Bluefin DX ships with the Distrobox and Podman container
hosting packages that Kasbah depends on as standard
equipment.

However, the Kasbah Distrobox container should run
on any recent Linux desktop once you install Podman and
Distrobox.

- Fedora Silverblue, Kinoite, other Fedora atomic desktop:
run script `rpm-ostree_container_hosting.sh`.
- RHEL and clones, CentOS Stream, Fedora Workstation,
other non-atomic desktops using the `dnf` package
installer: run script `dnf_container_hosting.sh`.
- Debian or Ubuntu: run script `apt_container_hosting.sh`.
- Raspberry Pi 4 or 5, 64-bit Pi OS: run script
`apt_container_hosting.sh`.
- openSUSE: run script `zypper_container_hosting.sh`.
- Arch / Arch derivatives: run script
`pacman_container_hosting.sh`.

If you need another distro, please open an issue at
<https://github.com/AlgoCompSynth/Kasbah/issues/new>.
