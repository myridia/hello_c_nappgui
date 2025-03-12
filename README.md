## Requirment

### Install nappgui lib
```
git clone --depth 1 https://github.com/frang75/nappgui_src.git
cd nappgui_src
# Windows
cmake -S . -B build -DNAPPGUI_DEMO=NO
cmake --build build --config Release -j 4
cmake --install build --config Release --prefix C:/nappgui

# macOS
cmake -G Xcode -S . -B build -DNAPPGUI_DEMO=NO
cmake --build build --config Release -j 4
cmake --install build --config Release --prefix /usr/local/nappgui

# Linux
cmake -S . -B build -DNAPPGUI_DEMO=NO -DCMAKE_BUILD_TYPE=Release
cmake --build build -j 4
cmake --install build --config Release --prefix /usr/local/nappgui
```

## Install and run the helloworld hello_c_nappgui
```
git clone https://github.com/myridia/hello_c_nappgui.git
cd hello_cmake_c
./build.sh
```
