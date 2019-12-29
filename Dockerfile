FROM jupyter/scipy-notebook

USER root

RUN apt-get update && \
    apt-get -y upgrade && \
    rm -rf /var/lib/apt/lists/*

USER $NB_UID

RUN conda update -n base conda && \
    conda update --all && \
    conda install -c conda-forge cartopy && \
    conda install pygrib
