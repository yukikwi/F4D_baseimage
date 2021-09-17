FROM ubuntu:focal

RUN apt update && \
    DEBIAN_FRONTEND="noninteractive" apt install -y tzdata && \
    apt install -y make gcc gfortran curl wget less && \
    apt install -y python tk gnuplot-x11 python-tk python-numpy desktop-file-utils && \
    apt install -y python-imaging-tk && \
    curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py && \
    python get-pip.py && \
    apt clean && \
    pip install -U pydicom
