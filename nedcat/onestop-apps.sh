#!/bin/sh

# run as root

chmod -R 0755 .

cd apps

./platform.sh
./gui-base.sh
#./gui-extra.sh
#./gui-classic.sh
#./gui-classic2.sh
./desktop-core.sh
./internet.sh
./system.sh
./text.sh
./text-suite.sh
./math.sh
./image.sh
./video.sh
./audio.sh
#./devtools-native.sh
