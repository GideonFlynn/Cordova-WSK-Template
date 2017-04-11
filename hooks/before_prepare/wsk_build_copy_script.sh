#!/bin/bash

echo "Building Web Starter Kit Project.";
cd wsk/;
gulp;

cd ../;

echo "Deleting files in /www";
rm -rf /www/*;

echo "Copying files from /wsk/dist to /www";
cp -r wsk/dist/* www/;