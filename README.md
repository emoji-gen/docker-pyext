## Dockerfile for Python Extension
[![CircleCI](https://circleci.com/gh/emoji-gen/docker-pyext/tree/master.svg?style=shield)](https://circleci.com/gh/emoji-gen/docker-pyext/tree/master)

The Docker image is used to build [emojilib](https://github.com/emoji-gen/emojilib) project written by Cython, and it contains gcc as a C++ compiler and multiple versions of Python. After the master branch is updated, it is compiled on CircleCI and automatically publish to DockerHub.
<br>
<br>

## Installed packages
The docker image is based Debian 10 Buster, and these packages below are installed.

- Python 3.6, 3.7 and 3.8
- g++

```
$ g++ --version
g++ (Debian 8.3.0-6) 8.3.0
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

## Build

```
$ docker build -t emojigen/pyext .
```

## License
MIT &copy; [Emoji Generator](https://emoji-gen.ninja)
