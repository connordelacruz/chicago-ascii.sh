#!/bin/bash

# Color escape sequences
# Blue on white
bw="$(tput setaf 4)$(tput setab 7)"
# Red on white (bold)
rw="$(tput setaf 1)$(tput setab 7)$(tput bold)"
# Reset attributes
rst="$(tput sgr0)"

# Centering text
# Width of output
width=11
cols=$(tput cols)
# Padding
space_count=$(( ($cols/2) - ($width/2) ))
pad=$(printf '%*s' "$space_count" | tr ' ' ' ')

cat << EOF

${pad}${bw}▄▄▄▄▄▄▄▄▄▄▄${rst}
${pad}${rw}  ✶ ✶ ✶ ✶  ${rst}
${pad}${bw}▀▀▀▀▀▀▀▀▀▀▀${rst}

EOF
