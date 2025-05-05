FROM mambaorg/micromamba:2.0.8

COPY --chown=$MAMBA_USER:$MAMBA_USER environment_xarray.yml /tmp/environment_xarray.yml
RUN micromamba install -y -n base -f /tmp/environment_xarray.yml && \
    micromamba clean --all --yes
