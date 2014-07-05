#!/bin/sh


function install_osg_client () {

  # Version of OSG Client
  myVersion=${1}

  # Remove the trailing -N
  myVer=${myVersion%-*}

  # EL should be either el5 or el6
  myEL=${2}

  # arch should be either x86_64 or i386
  myArch=${3}

  # Name of the tarball to download and install
  myTB=${osgClient}-${myVersion}.${myEL}.${myArch}.tar.gz

  # Download the new tarball
  (cd ${osgWWW}/${osgClient}; rm -f ${myTB}; wget --quiet http://repo.grid.iu.edu/tarball-install/3.1/${myVer}/${myTB})
  
  if [[ $? -eq 0 ]]; then
    echo 
    echo "OSG Client downloaded  ${myTB}"
    echo 
  else
    echo
    echo "OSG Client unable to download tarball from http://repo.grid.iu.edu/tarball-install/3.1/${myVer}/${myTB}"
    echo
    return 1
  fi

}


function current_osg_client () {

  # Version of OSG Client
  myVersion=${1}

  # EL should be either el5 or el6
  myEL=${2}

  # arch should be either x86_64 or i386
  myArch=${3}

  # Name of the tarball to download and install
  myTB=${osgClient}-${myVersion}.${myEL}.${myArch}.tar.gz


  # Make this release current
  if [[ -f ${osgWWW}/${osgClient}/${myTB} ]]; then
    echo
    echo "OSG Client tarball ${myTB} made current"
    echo
    rm -f ${osgWWW}/${osgClient}.tar.gz
    ln -s ${osgClient}/${myTB} ${osgWWW}/${osgClient}.tar.gz
  else
    echo
    echo "OSG Client tarball ${myTB} not downloaded"
    echo
  fi

}
