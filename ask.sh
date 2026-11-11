#!/bin/sh

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

show_menu() {
  printf "%s\n" '  ┌─────┬──────────────────────────────────────────────┐'
  printf "%s\n" '  │  ID │ Description                                  │'
  printf "%s\n" '  ├─────┼──────────────────────────────────────────────┤'
  printf "%s\n" '  │  1  │ Install NAppGUI - Windows (C:/nappgui)       │'
  printf "%s\n" '  │  2  │ Install NAppGUI - macOS (/usr/local/nappgui) │'
  printf "%s\n" '  │  3  │ Install NAppGUI - Linux (/usr/local/nappgui) │'
  printf "%s\n" '  │  4  │ Build & run app (./build.sh)                 │'
  printf "%s\n" '  │  0  │ Exit                                         │'
  printf "%s\n" '  └─────┴──────────────────────────────────────────────┘'
}

printf "\n  hello_c_nappgui — Task Runner\n\n"

while true; do
  show_menu

  printf "  Enter Task ID: "
  read task || exit 0

  if [ "$task" = "0" ]; then
    printf "  Goodbye!\n"
    exit 0
  fi

  if [ "$task" = "1" ]; then
    printf "  ...installing NAppGUI for Windows\n"
    "$SCRIPT_DIR/ask.d/install_nappgui_windows.sh"
  elif [ "$task" = "2" ]; then
    printf "  ...installing NAppGUI for macOS\n"
    "$SCRIPT_DIR/ask.d/install_nappgui_macos.sh"
  elif [ "$task" = "3" ]; then
    printf "  ...installing NAppGUI for Linux\n"
    "$SCRIPT_DIR/ask.d/install_nappgui_linux.sh"
  elif [ "$task" = "4" ]; then
    printf "  ...building and running the app\n"
    "$SCRIPT_DIR/ask.d/build.sh"
  else
    printf "  Unknown task: %s\n" "$task"
  fi

  sleep 2
  printf "\n"
done
