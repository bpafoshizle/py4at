FROM continuumio/anaconda3

COPY pyalgo_env.yml .

RUN conda config --set restore_free_channel true
RUN conda env create -f pyalgo_env.yml
SHELL ["conda", "run", "-n", "py4at", "/bin/bash", "-c"]
RUN python -m ipykernel install --user --name py4at --display-name "py4at"
