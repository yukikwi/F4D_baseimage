FROM ubuntu:focal

RUN apt-get clean && \
    apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -y tzdata && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -y make gcc gfortran curl wget less && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -y python tk gnuplot-x11 python-tk python-numpy desktop-file-utils && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -y python-imaging-tk && \
    curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py && \
    python get-pip.py && \
    apt-get clean && \
    pip install -U pydicom && \
    rm get-pip.py
