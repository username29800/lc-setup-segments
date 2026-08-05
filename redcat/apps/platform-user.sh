#!/bin/sh
# run as user

hpath="`cd "$HOME" && pwd`"

cd "$hpath"
mkdir -p nedcat.d/Applications
cd nedcat.d/Applications
mkdir archives data menu
