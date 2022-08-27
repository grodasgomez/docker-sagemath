# Sage Dockerfile 
FROM python:3.10.4-slim-bullseye

RUN pip install --upgrade pip
RUN apt-get update
RUN apt-get install -y sagemath
RUN pip install jupyter jupyterlab 

# For using local runtime from Google Colab
RUN pip install jupyter_http_over_ws
RUN jupyter serverextension enable --py jupyter_http_over_ws

# Create default config for jupyter
COPY ./config/jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
WORKDIR /sage

EXPOSE 8888