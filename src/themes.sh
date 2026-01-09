#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"
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

  "everforest_light")
    declare -A THEME=(
      ["background"]="#EAE4CA" # Warmer, softer background
      ["foreground"]="#5C6A72" # Main text - dark blue-grey
      ["black"]="#5C6A72"      # Darkest - same as foreground
      ["blue"]="#3793b8"       # Brighter, more vibrant blue
      ["cyan"]="#3FBC88"       # Brighter cyan/aqua
      ["green"]="#92b53f"      # Brighter, more vibrant green
      ["magenta"]="#E87AB8"    # Brighter magenta
      ["red"]="#F85552"        # Bright red (from original palette)
      ["white"]="#D3C6AA"      # Light tan/grey for secondary text
      ["yellow"]="#F0B429"     # Brighter yellow
      ["bblack"]="#b6c2b4"     # Bright black (grey1)
      ["bblue"]="#E1E7DD"      # Very light blue for backgrounds (bg_blue)
      ["bcyan"]="#E5F4ED"      # Very light cyan for backgrounds
      ["bgreen"]="#E5E6C5"     # Very light green for backgrounds (bg_green)
      ["bmagenta"]="#F1DDD4"   # Very light magenta for backgrounds (bg_purple)
      ["bred"]="#FADBD0"       # Very light red for backgrounds (bg_red)
      ["bwhite"]="#F3EAD3"     # Very light (bg0)
      ["byellow"]="#F1E4C5"    # Very light yellow for backgrounds (bg_yellow)
    )
    ;;

  "tokyodark")
    declare -A THEME=(
      ["background"]="#11121D" # bg0 - main background
      ["foreground"]="#A0A8CD" # fg - main text
      ["black"]="#06080A"      # black - darkest
      ["blue"]="#7199EE"       # blue
      ["cyan"]="#38A89D"       # cyan
      ["green"]="#95C561"      # green
      ["magenta"]="#A485DD"    # purple
      ["red"]="#EE6D85"        # red
      ["white"]="#4A5057"      # grey/bg4 - secondary text
      ["yellow"]="#D7A65F"     # yellow
      ["bblack"]="#353945"     # bg3 - bright black (grey)
      ["bblue"]="#9FBBF3"      # bg_blue - light blue for backgrounds
      ["bcyan"]="#5FCBBA"      # brighter cyan variant
      ["bgreen"]="#98C379"     # bg_green - light green for backgrounds
      ["bmagenta"]="#C4A7E7"   # brighter purple variant
      ["bred"]="#FE6D85"       # bg_red - light red for backgrounds
      ["bwhite"]="#A0A8CD"     # fg - lightest (same as foreground)
      ["byellow"]="#E5C07B"    # brighter yellow variant
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
