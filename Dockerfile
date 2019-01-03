################################################################################
ARG UBUNTU_VERSION=18.04
FROM ubuntu:${UBUNTU_VERSION}

################################################################################
ARG GCC_VERSION=8.2.0

COPY ./scripts/gcc.sh .
RUN /bin/bash gcc.sh ${GCC_VERSION} && rm gcc.sh

################################################################################
ARG CMAKE_VERSION=3.13.2

COPY ./scripts/cmake.sh .
RUN /bin/bash cmake.sh ${CMAKE_VERSION} && rm cmake.sh

################################################################################
ARG CLANG_VERSION=7

COPY ./scripts/clang.sh .
RUN /bin/bash clang.sh ${CLANG_VERSION} && rm clang.sh

################################################################################
ARG GDB_VERSION=8.2

COPY ./scripts/gdb.sh .
RUN /bin/bash gdb.sh ${GDB_VERSION} && rm gdb.sh
################################################################################
