FROM ros:noetic-ros-base-focal

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python3-pip && \
    rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-c"]

RUN pip install notebook numpy matplotlib jupyter_http_over_ws

RUN jupyter serverextension enable --py jupyter_http_over_ws

COPY ros_entrypoint.sh /ros_entrypoint.sh

WORKDIR /root

ADD TurtleBot3 TurtleBot3

