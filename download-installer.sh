#!/bin/bash
version="4.6.28"
openshift_installer_url="https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/$version"
echo $openshift_installer_url
case $(uname -s) in
  Linux)
    wget -r -l1 -np -nd $openshift_installer_url/openshift-client-linux-$version.tar.gz -q -P ./installer-files/
    wget -r -l1 -np -nd $openshift_installer_url/openshift-install-linux-$version.tar.gz -q -P ./installer-files/
    ;;
  Darwin)
    wget -r -l1 -np -nd $openshift_installer_url/openshift-client-mac-$version.tar.gz -q -P ./installer-files/
    wget -r -l1 -np -nd $openshift_installer_url/openshift-install-mac-$version.tar.gz -q -P ./installer-files/
    ;;
  *) exit 1
    ;;
esac