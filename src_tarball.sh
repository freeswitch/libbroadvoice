#!/bin/bash
ORIGDIR=`pwd`
TMPDIR=broadvoice.$$

mkdir -p ../${TMPDIR}

cd ..
cp -a libbroadvoice ${TMPDIR}/broadvoice-0.1.0
cd ${TMPDIR}
rm -rf broadvoice-0.1.0/.git*
tar zcvf broadvoice-0.1.0.tar.gz broadvoice-0.1.0
mv broadvoice-0.1.0.tar.gz ${ORIGDIR}/.

cd ${ORIGDIR}
rm -rf ../${TMPDIR}
