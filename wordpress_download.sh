#!/bin/bash

wordpress_version="6.4.2"

sudo apt-get install unzip

wait

curl -o wordpress.zip https://uk.wordpress.org/wordpress-$wordpress_version-uk.zip

wait

unzip wordpress.zip

wait

rm wordpress.zip
