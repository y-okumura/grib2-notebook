FROM jupyter/scipy-notebook

USER $NB_UID

RUN conda install basemap && conda install pygrib
VOLUME /home/jovyan