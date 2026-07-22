#!/usr/bin/env bash
# Dracula palette demo — shows off a terminal color scheme for screenshots.
# Usage:  bash colors.sh
# Works over SSH in SecureCRT (terminal = Xterm, ANSI Color enabled) or any ANSI terminal.

esc=$'\033'
reset="${esc}[0m"
bold="${esc}[1m"

names=(Black Red Green Yellow Blue Magenta Cyan White)

echo
echo "  ${bold}Dracula${reset}  —  terminal color scheme demo"
echo

# Row of the 8 normal + 8 bright background swatches
printf "  "
for i in $(seq 0 15); do
  printf "${esc}[48;5;%dm  %2d  ${reset}" "$i" "$i"
  [ "$i" = 7 ] && printf "\n  "
done
echo; echo

# Named foreground colors: normal and bold, on the theme background
for i in 0 1 2 3 4 5 6 7; do
  b=$((i + 8))
  printf "  ${esc}[38;5;%dm%-9s${reset}  ${esc}[1;38;5;%dm%-13s${reset}" "$i" "${names[$i]}" "$b" "${names[$i]} bold"
  printf "   ${esc}[38;5;%dmThe quick brown fox${reset}\n" "$i"
done
echo

# A line that mimics a real prompt + ls output
printf "  ${esc}[1;38;5;2mzach@homelab${reset}:${esc}[1;38;5;4m~${reset}\$ ls --color\n"
printf "  ${esc}[38;5;6mDracula.ini${reset}   README.md   ${esc}[1;38;5;2minstall.sh${reset}   ${esc}[1;38;5;4mConfig${reset}\n"
echo

# 256-color fade bar (nice eye candy)
printf "  256-color: "
for i in $(seq 16 231); do
  printf "${esc}[48;5;%dm ${reset}" "$i"
done
echo; echo
