# Start from a core stack version
FROM jupyter/scipy-notebook:04f7f60d34a6

COPY requirements.txt /tmp/
RUN conda install conda=4.8.3 --yes
RUN conda install --yes --file /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
RUN git clone https://github.com/bwsi-remote-sensing-2020/00-InitialSetup.git /home/$NB_USER/00-InitialSetup
