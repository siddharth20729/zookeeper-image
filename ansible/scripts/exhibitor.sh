#!/bin/bash

set -eu -o pipefail

sudo wget https://services.gradle.org/distributions/gradle-2.4-bin.zip && unzip gradle-2.4-bin.zip
sudo wget https://raw.githubusercontent.com/Netflix/exhibitor/v1.5.5/exhibitor-standalone/src/main/resources/buildscripts/standalone/gradle/build.gradle

sudo gradle-2.4/bin/gradle shadowJar

sudo mv build/libs/exhibitor-*-all.jar /usr/share/java/
sudo ln -s /usr/share/java/exhibitor-*-all.jar /usr/share/java/exhibitor.jar

sudo rm -rf build*
sudo rm -rf gradle*
