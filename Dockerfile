FROM jupyter/datascience-notebook:latest

USER root
RUN apt-get update --yes && apt-get install software-properties-common --yes
RUN add-apt-repository ppa:unit193/encryption -y 
RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends && \
    apt-get install veracrypt --yes && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
