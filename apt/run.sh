#!/bin/sh

sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

sudo sed -i 's/\w{2}.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
sudo sed -i 's/security.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
sudo sed -i 's/extras.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list

sudo apt update -y && sudo apt upgrade -y

sudo apt install -y build-essential
