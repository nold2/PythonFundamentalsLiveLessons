FROM continuumio/anaconda3:latest

WORKDIR "~"

ENV CONDA_ALWAYS_YES="true"

RUN ["apt-get", "update"]

RUN ["apt-get", "install", "vim", "-y"]

RUN ["conda", "update", "conda"]

RUN ["conda", "update", "--all"]

RUN ["conda", "install", "-c", "conda-forge", "ipympl"] 

RUN ["conda", "install", "nodejs"]

RUN ["jupyter", "labextension", "install", "@jupyter-widgets/jupyterlab-manager"]

RUN ["jupyter", "labextension", "install", "jupyter-matplotlib"]

EXPOSE 8888

COPY ./examples ./

