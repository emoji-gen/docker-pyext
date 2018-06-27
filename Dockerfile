FROM debian:stretch-slim

RUN ["/bin/bash", "-c", "\
  set -eux -o pipefail \
    && export PYTHON_35_VERSION=3.5.5 \
    && export PYTHON_36_VERSION=3.6.5 \
    && export PYTHON_37_VERSION=3.7.0rc1 \
    \
    && apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends \
      git gcc g++ make cmake ruby python \
      libyaml-dev zlib1g-dev libssl-dev libbz2-dev libreadline-dev libffi-dev \
      libfontconfig1-dev libx11-dev libxcomposite-dev libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev \
      curl ca-certificates \
    \
    && mkdir -p /usr/local \
    && git clone https://github.com/tagomoris/xbuild.git /usr/local/xbuild \
    && /usr/local/xbuild/python-install -f $PYTHON_35_VERSION /usr/local/python-3.5 \
    && /usr/local/xbuild/python-install -f $PYTHON_36_VERSION /usr/local/python-3.6 \
    && /usr/local/xbuild/python-install -f $PYTHON_37_VERSION /usr/local/python-3.7 \
    \
    && /usr/local/python-3.5/bin/pip3 install pip --upgrade \
    && /usr/local/python-3.6/bin/pip3 install pip --upgrade \
    && /usr/local/python-3.7/bin/pip3 install pip --upgrade \
    && /usr/local/python-3.5/bin/pip3 install wheel --upgrade \
    && /usr/local/python-3.6/bin/pip3 install wheel --upgrade \
    && /usr/local/python-3.7/bin/pip3 install wheel --upgrade \
    && gem install --no-document gemfury \
    \
    && rm -rf /usr/local/xbuild \
    && apt-get -qq purge -y curl \
    && apt-get -qq autoremove -y \
    && apt-get -qq clean \
    && rm -rf ~/.cache/pip/ \
    && rm -rf ~/.pyenv/ \
    && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* \
"]
