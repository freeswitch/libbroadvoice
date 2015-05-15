#!/bin/sh
##### -*- mode:shell-script; indent-tabs-mode:nil; sh-basic-offset:2 -*-

(mkdir -p rpmbuild && cd rpmbuild && mkdir -p SOURCES BUILD BUILDROOT SPECS RPMS SRPMS)
cp *.spec rpmbuild/SPECS
cp *.gz rpmbuild/SOURCES

rpmbuild --define "_topdir %(pwd)/rpmbuild" \
  -ba rpmbuild/SPECS/broadvoice.spec

