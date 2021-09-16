FROM fedora:34

# Using the list of packages from
# https://fluka-forum.web.cern.ch/t/software-requirements-of-fluka-and-flair/94

RUN dnf update -y && \
    dnf install -y make gcc-gfortran \ 
                   python-pillow-tk python-scipy python-numpy python-matplotlib \
                   python-pydicom gnuplot \
                   which less emacs desktop-file-utils && \
    dnf clean all 
