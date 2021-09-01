# Ventis Build
Build image for Ventis VM2000 respirator

## Usage
From the project directory you wish to build, run:

`docker run -it --rm -v "$PWD":/build -w /build ventis-build make`


## Dependencies
A tarball of the sysroot is included in the build image project

## License
Copyright 2021 Dojo Five, LLC
