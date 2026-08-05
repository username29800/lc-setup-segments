#!/bin/sh
# run as user

hpath="`cd "$HOME" && pwd`"

cd "$hpath"
mkdir -p nedcat.d/env
cd nedcat.d/env
mkdir archives data bin
