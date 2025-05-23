#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"
#FIXME: at the moment only default colors are updated
case $SELECTED_THEME in
  # TODO: update colors
  "tokyo")
    declare -A THEME=(
      ["background"]="#24283b"
      ["foreground"]="#a9b1d6"
      ["black"]="#414868"
      ["blue"]="#7aa2f7"
      ["cyan"]="#7dcfff"
      ["green"]="#73daca"
      ["magenta"]="#bb9af7"
      ["red"]="#f7768e"
      ["white"]="#a9b1d6"
      ["yellow"]="#e0af68"

      ["bblack"]="#414868"
      ["bblue"]="#7aa2f7"
      ["bcyan"]="#7dcfff"
      ["bgreen"]="#41a6b5"
      ["bmagenta"]="#bb9af7"
      ["bred"]="#f7768e"
      ["bwhite"]="#787c99"
      ["byellow"]="#e0af68"
    )
    ;;

    # TODO: update colors
  "catpuccin")
    declare -A THEME=(
      ["background"]="#24273a"
      ["foreground"]="#cad3f5"
      ["black"]="#181926"
      ["blue"]="#8aadf4"
      ["cyan"]="#91d7e3"
      ["green"]="#a6da95"
      ["magenta"]="#c6a0f6"
      ["red"]="#ed8796"
      ["white"]="#cad3f5"
      ["yellow"]="#eed49f"
      ["bblack"]="#494d64"
      ["bblue"]="#8aadf4"
      ["bcyan"]="#91d7e3"
      ["bgreen"]="#a6da95"
      ["bmagenta"]="#c6a0f6"
      ["bred"]="#ed8796"
      ["bwhite"]="#cad3f5"
      ["byellow"]="#eed49f"
    )
    ;;

  "gruvbox")
    declare -A THEME=(
      ["background"]="#1d2021" # darker background for better contrast
      ["foreground"]="#fbf1c7" # brightest foreground color
      ["black"]="#282828"      # slightly lighter black
      ["blue"]="#83a598"       # brighter blue
      ["cyan"]="#8ec07c"       # brighter cyan
      ["green"]="#b8bb26"      # brighter green
      ["magenta"]="#d3869b"    # brighter magenta
      ["red"]="#fb4934"        # bright red
      ["white"]="#fbf1c7"      # brightest white
      ["yellow"]="#fabd2f"     # bright yellow
      ["bblack"]="#a89984"     # lighter bright black
      ["bblue"]="#83a598"      # maintained bright blue
      ["bcyan"]="#8ec07c"      # maintained bright cyan
      ["bgreen"]="#b8bb26"     # maintained bright green
      ["bmagenta"]="#d3869b"   # maintained bright magenta
      ["bred"]="#fb4934"       # maintained bright red
      ["bwhite"]="#fff9e5"     # even brighter white
      ["byellow"]="#ffcd43"    # brighter yellow
    )
    ;;

  *)
    # Default to night theme
    # Night Owl Theme
    declare -A THEME=(
      ["background"]="#011627"
      ["foreground"]="#d6deeb"
      ["black"]="#01101c"
      ["blue"]="#82aaff"
      ["cyan"]="#89ddff"
      ["green"]="#22DA6E"
      ["magenta"]="#C792EA"
      ["red"]="#EF5350"
      ["white"]="#e6edf3"
      ["yellow"]="#FFCB6B"

      ["bblack"]="#01101c"
      ["bblue"]="#82aaff"
      ["bcyan"]="#89ddff"
      ["bgreen"]="#22DA6E"
      ["bmagenta"]="#C792EA"
      ["bred"]="#EF5350"
      ["bwhite"]="#e6edf3"
      ["byellow"]="#FFCB6B"
    )
    ;;

esac

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
