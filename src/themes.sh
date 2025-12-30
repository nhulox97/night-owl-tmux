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
      ["background"]="#1d2021" # Very dark background (almost black)
      ["foreground"]="#fbf1c7" # Very light foreground for main text
      ["black"]="#282828"      # Slightly lighter black for subtle elements
      ["blue"]="#458588"       # Darker blue
      ["cyan"]="#689d6a"       # Adjusted cyan to complement darker blue
      ["green"]="#b8bb26"      # Bright green
      ["magenta"]="#d3869b"    # Bright magenta
      ["red"]="#fb4934"        # Bright red
      ["white"]="#ebdbb2"      # Light greyish (not pure white)
      ["yellow"]="#fabd2f"     # Bright yellow
      ["bblack"]="#504945"     # Medium gray for less emphasis
      ["bblue"]="#076678"      # Darker bright blue
      ["bcyan"]="#8ec07c"      # Bright cyan
      ["bgreen"]="#b8bb26"     # Bright green
      ["bmagenta"]="#d3869b"   # Bright magenta
      ["bred"]="#fb4934"       # Bright red
      ["bwhite"]="#fbf1c7"     # Very light greyish
      ["byellow"]="#fabd2f"    # Bright yellow
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

  "everforest_light") # or your preferred theme name
    declare -A THEME=(
      ["background"]="#F3EAD3" # Light background
      ["foreground"]="#5C6A72" # Dark foreground for main text
      ["black"]="#829181"      # Dark grey for subtle elements
      ["blue"]="#3A94C5"       # Blue
      ["cyan"]="#35A77C"       # Aqua/cyan
      ["green"]="#8DA101"      # Green
      ["magenta"]="#DF69BA"    # Purple/magenta
      ["red"]="#F85552"        # Red
      ["white"]="#EAE4CA"      # Light greyish background variant
      ["yellow"]="#DFA000"     # Yellow
      ["bblack"]="#939F91"     # Medium gray (brighter than black)
      ["bblue"]="#4FA6D5"      # Brighter blue
      ["bcyan"]="#45B78C"      # Brighter cyan/aqua
      ["bgreen"]="#9DB121"     # Brighter green
      ["bmagenta"]="#EF79CA"   # Brighter magenta/purple
      ["bred"]="#FF6562"       # Brighter red
      ["bwhite"]="#FFFBF0"     # Very light (almost white)
      ["byellow"]="#EFAF00"    # Brighter yellow
    )
    ;;

esac

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
