#!/bin/bash
if [ -z "$1" ]
  then
    echo -e "What is the URL of the git repo? Make sure it is public"
    read url
else
    url=$1
fi

git clone --branch=master $url temp
cd temp
git log --first-parent --skip 450 -n 1
cd ..
rm -rf temp