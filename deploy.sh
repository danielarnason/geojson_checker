!#/usr/bin/env sh

set -env
npm run build

cd dist

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/danielarnason/geojson_checker.git main:gh-pages

cd -