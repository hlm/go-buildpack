#!/bin/sh

cd ../..

# remove github dep cache
rm -rf src/github.com

export GOPATH=$PWD
export PATH=$GOPATH/bin:$PATH

go get github.com/tools/godep
godep get github.com/ZiCog/shiny-thing/foo

cd -

# remove workspace cache
rm -rf Godeps/_workspace
rm -rf vendor

go install

mkdir -p vendor
cp -r ../github.com vendor/github.com
