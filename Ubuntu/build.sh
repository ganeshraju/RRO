#!/bin/bash
mkdir rpmbuild/SOURCES
HOME=`pwd`
export HOME
cd ../
mv R-src RRO-8.0.3-3.1.3
tar czf RRO-8.0.3-3.1.3.tar.gz RRO-8.0.3-3.1.3
cp RRO-8.0.3-3.1.3.tar.gz Ubuntu/rpmbuild/SOURCES
cd Ubuntu/rpmbuild
rpmbuild -ba SPECS/R.spec
cd RPMS/x86_64
alien --scripts --to-deb RRO-8.0.3-3.1.3-1.x86_64.rpm
cp $HOME/install.sh .
mv rro-8.0.3_3.1.3-2_amd64.deb RRO_3.1.3-1_amd64.deb
