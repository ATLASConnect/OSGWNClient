#!/bin/sh

source $PWD/osg-tools.sh

# The location where we are going to install the product
osgWWW=/home/www/osg



# Which OSG Client (osg-client or osg-wn-client)
osgClient=osg-wn-client

# Install EL6 releases

install_osg_client 3.1.36-1 el6 x86_64
#install_osg_client 3.1.33-1 el6 x86_64
#install_osg_client 3.1.31-1 el6 x86_64


# Which EL6 release is current

current_osg_client 3.1.36-1 el6 x86_64



# Which OSG Client (osg-client or osg-wn-client)
osgClient=osg-client

# Install EL6 releases

install_osg_client 3.1.36-1 el6 x86_64
#install_osg_client 3.1.33-1 el6 x86_64
#install_osg_client 3.1.31-1 el6 x86_64


# Which EL6 release is current

current_osg_client 3.1.36-1 el6 x86_64
