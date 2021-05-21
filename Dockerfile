FROM fedora:34

RUN dnf update -y && \
    dnf install -y make gcc-gfortran findutils wget htop yum-plugin-ovl \
                   gnuplot python tk tkinter python-imaging-tk less emacs \
                   python2-pip python2-scipy python2-numpy desktop-file-utils && \
    dnf clean all && \
    pip install -U pydicom
