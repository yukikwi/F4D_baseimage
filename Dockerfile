FROM fedora:27

RUN dnf install -y make gcc-gfortran findutils wget htop  yum-plugin-ovl \
                   gnuplot python tk tkinter python-imaging-tk \
                   python2-pydicom python2-numpy desktop-file-utils && \
    dnf clean all
