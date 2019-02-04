FROM jupyter/scipy-notebook

USER $NB_UID

RUN conda install basemap
RUN conda install pygrib
