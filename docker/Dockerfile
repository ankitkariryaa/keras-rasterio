FROM tensorflow/tensorflow:2.4.1-gpu-jupyter

RUN apt-get update && apt-get install -y --no-install-recommends \
      software-properties-common \
      bzip2 \
      g++ \
      git \
      graphviz \
      libgl1-mesa-glx \
      libhdf5-dev \
      openmpi-bin \
      libspatialindex-dev \
      gdal-bin \
      libgdal-dev \
      wget && \
    rm -rf /var/lib/apt/lists/*

ARG CPLUS_INCLUDE_PATH=/usr/include/gdal
ARG C_INCLUDE_PATH=/usr/include/gdal

RUN pip install --upgrade pip && \
    pip install \
      GDAL==`gdal-config --version` \
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
      jupyter \
      rtree \
      freeze \
      osmnx \
      keras && \
    pip install git+https://github.com/aleju/imgaug
# ADD mycert.pem mykey.key /var/keys/
ADD jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --allow-root --config=/root/.jupyter/jupyter_notebook_config.py"]
