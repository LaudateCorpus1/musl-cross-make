FROM centos:7

RUN yum -y -q install \
        libXpm bzip2 wget vim gcc gcc-c++ dos2unix glibc-devel glibc.i686 glibc-devel.i686 \
        mpfr.i686 mpfr-devel.i686 rsync autogen autoconf automake libtool gettext* bison binutils \
        flex device-mapper-devel SDL libpciaccess libusb gnu-free-* gnu-efi* pesign shim \
        grub2-tools zip nasm acpica-tools glibc-static zlib-static

CMD cd /musl/ && make && make install
