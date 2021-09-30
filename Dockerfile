FROM kong:2.5.1-ubuntu

LABEL description="Ubuntu + Kong 2.5.1"

USER root

RUN apt update
RUN apt install -y vim python3-pip python3-dev
RUN pip3 install kong-pdk

WORKDIR /opt
RUN git clone https://github.com/Kong/kong-python-pdk 
RUN rm /opt/kong-python-pdk/examples/py-image.py

COPY ./configs/kong.conf /etc/kong/

USER kong
