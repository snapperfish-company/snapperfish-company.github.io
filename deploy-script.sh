#!/bin/bash
# See https://medium.com/@nthgergo/publishing-gh-pages-with-travis-ci-53a8270e87db
set -o errexit

# rm -rf public

# config
# git config --global user.email "nobody@nobody.org"
# git config --global user.name "Travis CI"

# build (CHANGE THIS)
# npm run build

# deploy
cd public
git init
git add .
git commit -m "Deploy to Github Pages"
git push --force --quiet "https://${GH_TOKEN}@github.com/snapperfish-company/snapperfish-company.github.io.git" master:master > /dev/null 2>&1