#!/bin/bash

cd /DATA/

tar -zxvf socket_client.tar.gz

cd /DATA/socket_client/build

make clean || true 

make

exit 0

