#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"
#FIXME: at the moment only default colors are updated
case $SELECTED_THEME in
  # TODO: update colors
  "storm")
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
  "day")
    declare -A THEME=(
      ["background"]="#d5d6db"
      ["foreground"]="#343b58"
      ["black"]="#0f0f14"
      ["blue"]="#34548a"
      ["cyan"]="#0f4b6e"
      ["green"]="#33635c"
      ["magenta"]="#5a4a78"
      ["red"]="#8c4351"
      ["white"]="#343b58"
      ["yellow"]="#8f5e15"

      ["bblack"]="#9699a3"
      ["bblue"]="#34548a"
      ["bcyan"]="#0f4b6e"
      ["bgreen"]="#33635c"
      ["bmagenta"]="#5a4a78"
      ["bred"]="#8c4351"
      ["bwhite"]="#343b58"
      ["byellow"]="#8f5815"
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
      ["green"]="#C3E88D"
      ["magenta"]="#C792EA"
      ["red"]="#F07178"
      ["white"]="#e6edf3"
      ["yellow"]="#FFCB6B"

      ["bblack"]="#01101c"
      ["bblue"]="#82aaff"
      ["bcyan"]="#89ddff"
      ["bgreen"]="#C3E88D"
      ["bmagenta"]="#C792EA"
      ["bred"]="#F07178"
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
