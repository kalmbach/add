#!/bin/bash

OUTPUT_DIR=~/.local/bin

while getopts ":o:" option; do
  case $option in
    o) OUTPUT_DIR=$OPTARG
  esac
done

cd /tmp
wget -O add "https://raw.githubusercontent.com/kalmbach/add/refs/heads/main/add"
chmod a+x add 
mkdir -p $OUTPUT_DIR
mv add $OUTPUT_DIR

echo "Installed in $OUTPUT_DIR/add"
