## Dockerfile for Python Extension
[![CircleCI](https://circleci.com/gh/emoji-gen/docker-pyext/tree/master.svg?style=shield)](https://circleci.com/gh/emoji-gen/docker-pyext/tree/master)

The Docker image is used to build [emojilib](https://github.com/emoji-gen/emojilib) project written by Cython, and it contains gcc as a C++ compiler and multiple versions of Python. After the master branch is updated, it is compiled on CircleCI and automatically publish to DockerHub.
<br>
<br>

## Build

```
$ docker build -t emojigen/docker-emojilib .
```

## License
MIT &copy; [Emoji Generator](https://emoji-gen.ninja)
