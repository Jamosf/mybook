#!/bin/bash

#build
gitbook build

sleep 1

#push to master
git add .
git commit -m "xxx"
git push origin master

sleep 1

#push to gh-pages
cp -rf _book/* ../mybook-gh-pages/
cd ../mybook-gh-pages/
git add .
git commit -m "xxx"
git push origin gh-pages
