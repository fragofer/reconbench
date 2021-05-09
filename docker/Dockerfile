FROM ubuntu:18.04
LABEL maintainer="Francisco Gómez-Fernández <fgomez@dc.uba.ar>"

# Install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
      git \
      ca-certificates \
      g++ \
      make \
      bison \
      flex \
      libxmu-dev \
      libxi-dev \
      freeglut3-dev \
      libopenblas-dev \
      libpng-dev \
      wget \
      python \
      gnuplot \
      ffmpeg \
      texlive-font-utils \
      imagemagick \
      nano

RUN git clone --depth 1 https://github.com/fragofer/reconbench.git

WORKDIR /reconbench

RUN make

ENV PATH="/reconbench/bin:${PATH}"
