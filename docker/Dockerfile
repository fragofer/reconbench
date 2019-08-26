FROM ubuntu:18.04
MAINTAINER Francisco Gómez-Fernández "fgomez@dc.uba.ar"

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
      libpng-dev

RUN git clone --depth 1 https://github.com/fragofer/reconbench.git

WORKDIR /reconbench

RUN make

ENV PATH="/reconbench/bin:${PATH}"

# ENV NB_USER keras
# ENV NB_UID 1014

#RUN useradd -m -s /bin/bash -N -u $NB_UID $NB_USER && \
#    chown $NB_USER $CONDA_DIR -R && \
#    mkdir -p /src && \
#    chown $NB_USER /src

#USER $NB_USER
