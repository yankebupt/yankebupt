#!/bin/sh

cd _site
git init
git config user.name "Travis CI"
git config user.email "travis@travis-ci.org"
git add --all
git commit --message "Auto deploy from Travis CI build $TRAVIS_BUILD_NUMBER"
git remote add deploy https://$GH_TOKEN@github.com/yankebupt/yankebupt.github.io.git >/dev/null 2>&1
git push --force deploy master >/dev/null 2>&1
