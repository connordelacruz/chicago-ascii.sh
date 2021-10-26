#!/usr/bin/env bash

# Default color escape sequences (left to right)
c1="$(tput setaf 4)"
c2="$(tput setaf 6)"
c3="$(tput setaf 4)"
c4="$(tput setaf 6)"
c5="$(tput setaf 4)"
c6="$(tput setaf 6)"
# Reset attributes
rst="$(tput sgr0)"

# if -c flag is provided, override default colors
i=1
while getopts "c:" opt; do
    case $opt in
        c)
            eval "c$i=\$(tput setaf $OPTARG)"
            ((i++))
            ;;
    esac
done

# Centering text
# Width of output
width=31
cols=$(tput cols)
# Padding
space_count=$(( ($cols/2) - ($width/2) ))
pad=$(printf '%*s' "$space_count" | tr ' ' ' ')

cat << EOF

${pad}          ${c3}   ╷ ╷${rst}
${pad}          ${c3}   │ │${rst}
${pad}          ${c3}   ║ ║${rst}
${pad}          ${c3}   ║ ║${rst}
${pad}          ${c3}  ▐███▌${rst}
${pad}          ${c3}  ▐███▌     ${c5} │   │${rst}
${pad}          ${c3}  ▐███▌     ${c5} ╽   ╽${rst}
${pad}          ${c3} ▐█████▌    ${c5} ┃   ┃${rst}
${pad}          ${c3} ▐█████▌    ${c5} █████${rst}
${pad}   ${c2}  ▄██▄ ${c3} ▐█████▌    ${c5} █████${rst}
${pad}   ${c2}  ████ ${c3}▐███████▌   ${c5} █████${rst}
${pad}   ${c2}  ████ ${c3}▐███████▌   ${c5}▐█████▌${rst}
${pad}   ${c2}▐██████${c3}▐███████▌   ${c5}▐█████▌${rst}
${pad}   ${c2}▐██████${c3}▐████${c4}▐█████▌${c5}▐█████▌${rst}
${pad}   ${c2}▐██████${c3}▐████${c4}▐█████▌${c5}███████${rst}
${pad}${c1}█████▌${c2}████${c3}▐████${c4}▐█████▌${c5}████${c6}▐████${rst}
${pad}${c1}█████▌${c2}████${c3}▐████${c4}▐█████▌${c5}████${c6}▐████${rst}

EOF
