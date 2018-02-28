#! /bin/bash

echo "[REMOTE]: Cleaning up..."
rm -rf ~/build
rm -rf ~/sn_devheroes/home
echo "[REMOTE]: Extracting the package..."
tar zxf ~/tmp/sn.tar.gz -C ~/tmp/
echo "[REMOTE]: Installing the content..."
mkdir -p ~/lxsameer.com
mv -v ~/tmp/build ~/sn_devheroes/home
chmod 755 ~/sn_devheroes/ -R
echo "[REMOTE]: Cleaning up..."
rm -rf ~/resources ~/tmp/
mkdir -p ~/tmp
echo "[REMOTE]: Done"
