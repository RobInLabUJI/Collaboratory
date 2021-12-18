#!/usr/bin/env bash

docker run --rm -it --network host \
  --name jupyter robinlab/jupyter \
  jupyter notebook --NotebookApp.allow_origin='https://colab.research.google.com' \
                 --port=8888 --NotebookApp.port_retries=0 --no-browser \
                 --NotebookApp.token='' --ip 0.0.0.0 --allow-root

