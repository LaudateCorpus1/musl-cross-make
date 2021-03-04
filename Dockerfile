FROM centos:7

RUN yum -y -q install \
        make patch diff libXpm bzip2 wget vim gcc gcc-c++ dos2unix glibc-devel glibc.i686 glibc-devel.i686 \
        mpfr.i686 mpfr-devel.i686 rsync autogen autoconf automake libtool gettext* bison binutils \
        flex libusb gnu-free-* gnu-efi* pesign shim \
        zip nasm acpica-tools glibc-static zlib-static

CMD cd /musl/ && ls -l && make >build.log 2>&1 && make install && tar -cjf output.tar.bz2 ./output
