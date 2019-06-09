#!/bin/bash

#build
gitbook build

#push to master
git add .
git commit -m "xxx"
git push origin master

#push to gh-pages
cp -rf _book/* ../mybook-gh-pages/
cd ../mybook-gh-pages/
git add .
git commit -m "xxx"
git push origin gh-pages
