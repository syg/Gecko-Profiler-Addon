#!/bin/bash
hash git 2> /dev/null || {
  echo "You must have git installed to bootstrap"
  exit -1
}

if [ ! -d "sdk" ]; then
  git clone https://github.com/mozilla/addon-sdk sdk
fi
cd sdk
git fetch origin
git checkout firefox30
if [ ! -d "packages" ]; then
  mkdir packages
fi
cd packages
if [ ! -d "addon-pathfinder" ]; then
  git clone https://github.com/bgirard/addon-pathfinder addon-pathfinder
fi
cd addon-pathfinder
git fetch origin
git checkout 78e1191dc0ccd810657be813ec458a27494ebad5
