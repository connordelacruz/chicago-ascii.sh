#!/bin/bash

# Color escape sequences
# Color 1
c1="$(tput setaf 4)"
# Color 2
c2="$(tput setaf 6)"
# Reset attributes
rst="$(tput sgr0)"

# Centering text
# Width of output
width=31
cols=$(tput cols)
# Padding
space_count=$(( ($cols/2) - ($width/2) ))
pad=$(printf '%*s' "$space_count" | tr ' ' ' ')

cat << EOF

${pad}          ${c1}   ╷ ╷${rst}
${pad}          ${c1}   │ │${rst}
${pad}          ${c1}   ║ ║${rst}
${pad}          ${c1}   ║ ║${rst}
${pad}          ${c1}  ▐███▌${rst}
${pad}          ${c1}  ▐███▌     ${c1} │   │${rst}
${pad}          ${c1}  ▐███▌     ${c1} ╽   ╽${rst}
${pad}          ${c1} ▐█████▌    ${c1} ┃   ┃${rst}
${pad}          ${c1} ▐█████▌    ${c1} █████${rst}
${pad}   ${c2}  ▄██▄ ${c1} ▐█████▌    ${c1} █████${rst}
${pad}   ${c2}  ████ ${c1}▐███████▌   ${c1} █████${rst}
${pad}   ${c2}  ████ ${c1}▐███████▌   ${c1}▐█████▌${rst}
${pad}   ${c2}▐██████${c1}▐███████▌   ${c1}▐█████▌${rst}
${pad}   ${c2}▐██████${c1}▐████${c2}▐█████▌${c1}▐█████▌${rst}
${pad}   ${c2}▐██████${c1}▐████${c2}▐█████▌${c1}███████${rst}
${pad}${c1}█████▌${c2}████${c1}▐████${c2}▐█████▌${c1}████${c2}▐████${rst}
${pad}${c1}█████▌${c2}████${c1}▐████${c2}▐█████▌${c1}████${c2}▐████${rst}

EOF
