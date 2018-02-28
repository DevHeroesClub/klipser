#! /bin/bash

echo "[REMOTE]: Cleaning up..."
rm -rf ~/resources
echo "[REMOTE]: Extracting the package..."
tar zxf ~/tmp/sn.tar.gz
echo "[REMOTE]: Installing the content..."
mkdir -p ~/lxsameer.com
cp -rv ~/resources/_site/ ~/sn_devheroes/
chmod 755 ~/sn_devheroes/ -R
echo "[REMOTE]: Cleaning up..."
rm -rf ~/resources ~/tmp/
mkdir -p ~/tmp
echo "[REMOTE]: Done"
