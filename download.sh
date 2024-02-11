#!/usr/bin/env bash

# Go to where this shell script resides
cd $(dirname "$0")

rm *.uf2
gh run watch
gh run download -n firmware

# rename the uf2 to be more easy to work with
mv corne_left-nice_nano_v2-zmk.uf2 left.uf2
mv corne_right-nice_nano_v2-zmk.uf2 right.uf2

# return to original directory on this shell
cd -
