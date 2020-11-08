#! /usr/bin/fish

rm -rf public/*
hugo

cd public
git add *
git commit -m $argv[1]
git push origin main
cd ../
