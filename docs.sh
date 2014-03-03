#!/bin/sh

if [ -d 30sbt_plugins_in_15min/ ]
  then
    rm -r 30sbt_plugins_in_15min/
fi
pshow --offline
mv out/ 30sbt_plugins_in_15min/
