#!/bin/bash

docker build --build-arg XAMPP_URL="https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.2.4/xampp-linux-x64-8.2.4-0-installer.run" -t benchmark-xampp .
