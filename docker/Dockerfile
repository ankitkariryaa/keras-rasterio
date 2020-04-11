FROM tensorflow/tensorflow:2.1.0-gpu-py3

RUN apt-get update && apt-get install -y --no-install-recommends \
      bzip2 \
      g++ \
      git \
      graphviz \
      libgl1-mesa-glx \
      libhdf5-dev \
      openmpi-bin \
      libspatialindex-dev \
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
      jupyter \
      rtree \
      freeze \
      keras && \
    pip install git+https://github.com/aleju/imgaug
ADD mycert.pem mykey.key /var/keys/
RUN mkdir /tf
ADD jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --allow-root --config=/root/.jupyter/jupyter_notebook_config.py"]
