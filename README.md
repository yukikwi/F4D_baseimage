# F4D_baseimage
Fluka for Docker base image

Original script by D. Horváth
 
This script generates the ~~Fedora~~ Ubuntu base image used to run Fluka and Flair inside Docker, based on Ubuntu 20.04 LTS. This version of Ubuntu has a very long support cycle, with its maintenance support ending in 2025.

## Installation
This Docker base image is designed to work with my forked version of Fluka for Docker project by @flukadocker here: github.com/vicha-w/F4D.

1. Clone this repository

    ``` git clone https://github.com/vicha-w/F4D_baseimage.git```
2. `cd F4D_baseimage`
3. Build Docker base image. **Tag name `f4d_base_ubuntu_focal` is mandatory in order to work with F4D fork.**

    ``` docker build -t f4d_base_ubuntu_focal .```
4. You now have F4D base image on Docker to work with. To confirm this, type `docker images` and look for `f4d_base_ubuntu_focal`.