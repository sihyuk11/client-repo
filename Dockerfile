FROM rockylinux:9

# package install
RUN dnf install -y \
    tar \
    make \
    gcc \
    gcc-c++ \
    tcpdump \
    telnet \
    vim \
    ncurses \
    ncurses-term \
    net-tools \
    procps-ng \
    && dnf clean all

# directory create
WORKDIR /DATA/

# file copy
COPY socket_client.tar.gz
COPY exec.sh .
    
# permission 
RUN chmod +x exec.sh

#exec exec.sh
RUN /DATA/exec.sh

# exec 
CMD ["/DATA/socket_client/build/main"]

