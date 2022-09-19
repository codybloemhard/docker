# docker
Just some docker related stuff for myself.

## setup
To install on Artix OpenRC (non systemd needs extra package): `sudo pacman -S docker docker-openrc`.
Run daemon: `sudo rc-service docker start`.

## haskell-devenv
Development environment for haskell with Z3 theorem prover.
The haskell bindings to Z3 are best used with version 4.8.x.
Docker's Haskell container runs Debian Buster which only has version 4.4.
Distro's that don't lag behind a million years are on the newest version, 4.11.
But the bindings are not up to date.
To make the versions match, I took the Haskell Docker file [https://hackage.haskell.org/package/z3](https://hackage.haskell.org/package/z3) and replaced `buster` with `bullseye` to build the `haskellbullseye` container. This version of Debian has Z3 version 4.8.x.
From that container I build the `henv` container which is the Haskell development environment.
It takes the source as read-only so you run the container, leave it open, edit the code outside of the container and compile inside.
The container is made for you to not have to install any Haskell stuff on your host machine.
Run the container, `cabal init` to make the project, `cabal install` to install Z3 into the project.
`cabal install` needs to be run every time you startup the container, until you init a project and move  the files inside the container so you can install once on build.
