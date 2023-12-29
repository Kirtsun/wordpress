#!/bin/bash

wordpress_version="6.4.2"

wordpress_url="https://wordpress.org/wordpress-$wordpress_version-ru_RU.zip"

curl -o wordpress.zip https://wordpress.org/wordpress-$wordpress_version.zip

wait

unzip wordpress.zip

wait

rm wordpress.zip
