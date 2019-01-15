FROM tensorflow/tensorflow:latest-gpu-py3

RUN apt-get update && apt-get install -y --no-install-recommends \
      bzip2 \
      g++ \
      git \
      graphviz \
      libgl1-mesa-glx \
      libhdf5-dev \
      openmpi-bin \
      wget && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && \
    pip install \
      six \
      numpy \
      scipy \
      sklearn_pandas \
      tensorflow-gpu \
      cntk-gpu \
      rasterio \
      fiona \
      Shapely \
      Pillow \
      tqdm \
      pyproj \ 
      geopandas \
      scikit-learn \
      h5py \
      matplotlib \
      scikit-image \
      opencv-python \
      imageio \
      keras && \
    pip install git+https://github.com/aleju/imgaug

