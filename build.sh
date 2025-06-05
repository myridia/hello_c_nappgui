#!/bin/sh
rm build dist -Rf
cmake -S . -B build -DNAPPGUI_DEMO=NO -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local/nappgui 
cmake --build build
build/Release/bin/hello_c_nappgui
