#!/bin/bash

# make golang workspace
cd $HOME
echo "export GOPATH=$HOME/go" >> $HOME/.bashrc
echo "export PATH=$PATH:$GOPATH/bin" >> $HOME/.bashrc

# activate changes
source $HOME/.bashrc

# go to golang app
cd $GOPATH/src/github.com/leeprovoost/go-rest-api-template

# install dependencies
go get -t -v ./...

# make binary
go install

# copy fixtures,json file
cp /home/ec2-user/go/src/github.com/leeprovoost/go-rest-api-template/fixtures.json /home/ec2-user/go/bin