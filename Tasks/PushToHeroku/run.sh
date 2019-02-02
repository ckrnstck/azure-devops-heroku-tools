#!/bin/bash
apiKey=$1
appName=$2
pushRoot=$3
requestedFor=$4
herokuUrl="https://vsts:$apiKey@git.heroku.com:443/$appName.git"

mkdir $appName
cp -rf "$pushRoot/." "./$appName"
cd $appName

rm -rf .git
git init

git config --local user.name "$requestedFor"
git config --local user.email "$requestedFor@$appName.git.heroku.com"

git add .
git commit -m "from azure devops"

git push $herokuUrl master --force