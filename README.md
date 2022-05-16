# Portal64

A demake of portal for the Nintendo 64

# Building

## Docker

does not work yet

## Manual

1. Setup [Modern SDK](https://crashoveride95.github.io/n64hbrew/modernsdk/startoff.html)
2. Install [Blender](https://www.blender.org/)
3. Set the `BLENDER_2_9` environment variable to the absolute path of the blender executable

```sh
# On Debian/Ubuntu (and most other distros)
export BLENDER_2_9=/usr/bin/blender
```

4. Install the python vpk library using pip

```sh
pip install vpk
```

5. Build and install [vtf2png](https://github.com/eXeC64/vtf2png)

```sh
# Install dependencies

# Ubuntu/Debian
sudo apt install libpng-dev

# Arch
sudo pacman -S libpng

# Void
sudo xbps-install -S libpng-devel

# Fedora
sudo dnf install libpng-devel

# Next steps (Distro independent)
git clone https://github.com/eXeC64/vtf2png tools/vtf2png
cd tools/vtf2png
make
```

6. Build and install [skeletool64](https://github.com/lambertjamesd/skelatool64)

```sh
# Ubuntu/Debian

sudo apt install libtiff-dev libassimp-dev

# Arch
sudo pacman -S libtiff assimp

# Void
sudo xbps-install -S tiff-devel libassimp-devel

# Fedora
sudo dnf install libtiff-devel assimp-devel

# Next steps (Distro independent)
git clone https://github.com/lambertjamesd/skelatool64 tools/skeletool64
cd tools/skeletool64
make
```

7. Install imagemagick:

```sh
# Ubuntu/Debian
sudo apt install imagemagick

# Arch
sudo pacman -S imagemagick

# Void
sudo xbps-install -S ImageMagick

# Fedora
sudo dnf install ImageMagick
```

8. Run `make` to build the project
