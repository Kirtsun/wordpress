#!/bin/bash

wordpress_version="6.4.2"

wordpress_url="https://wordpress.org/wordpress-$wordpress_version.zip"

curl -o wordpress.zip https://wordpress.org/wordpress-$wordpress_version.zip && unzip wordpress.zip

rm wordpress.zip





