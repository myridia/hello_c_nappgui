# AGENTS.md — hello_c_nappgui

## What this is
A "Hello World" desktop GUI app written in C using the NAppGUI cross-platform GUI library.

## Stack
- C
- NAppGUI library (`/usr/local/nappgui`)
- CMake

## Build
```bash
./build.sh
```
Which runs `cmake -B build -DNAPPGUI_DEMO=NO -DCMAKE_BUILD_TYPE=Release` then `cmake --build build` and launches `build/Release/bin/hello_c_nappgui`.

## Run
```bash
./build.sh   # builds and runs the app
```

## Structure
- `src/hello_c_nappgui.c` — the app source
- `src/res/` — resources (icons)
- `src/CMakeLists.txt` — per-source CMake
- `CMakeLists.txt` — top-level NAppGUI project definition
- `build.sh` — configure, build and run
- `ask.sh` — task switch (menu); tasks live in `ask.d/`
- `ask.d/install_nappgui_windows.sh` — task 1: clone `nappgui_src` (if missing), build, install to `C:/nappgui`
- `ask.d/install_nappgui_macos.sh` — task 2: same, Xcode generator, prefix `/usr/local/nappgui`
- `ask.d/install_nappgui_linux.sh` — task 3: same, Release build, prefix `/usr/local/nappgui`

## Conventions
- No comments in code unless asked.
- Verify: `cmake --build build`
