#!/bin/bash

# Color escape sequences
# Blue foreground
bfg="$(tput setaf 4)"
# Reset attributes
rst="$(tput sgr0)"

# Centering text
# Width of output
width=38
cols=$(tput cols)
# Padding
space_count=$(( ($cols/2) - ($width/2) ))
pad=$(printf '%*s' "$space_count" | tr ' ' ' ')

cat << EOF

${pad}${bfg}               ╷ ╷                    ${rst}
${pad}${bfg}               │ │                    ${rst}
${pad}${bfg}               ║ ║                    ${rst}
${pad}${bfg}               ║ ║                    ${rst}
${pad}${bfg}              ▐███▌                   ${rst}
${pad}${bfg}              ▐███▌           │   │   ${rst}
${pad}${bfg}              ▐███▌           ╽   ╽   ${rst}
${pad}${bfg}             ▐█████▌          ┃   ┃   ${rst}
${pad}${bfg}             ▐█████▌          █████   ${rst}
${pad}${bfg}     ▄██▄    ▐█████▌          █████   ${rst}
${pad}${bfg}     ████   ▐███████▌         █████   ${rst}
${pad}${bfg}     ████   ▐███████▌        ▐█████▌  ${rst}
${pad}${bfg}   ▐██████▌ ▐███████▌        ▐█████▌  ${rst}
${pad}${bfg}   ▐██████▌ ▐███████▌ ▗▄▄▄▄▖ ▐█████▌  ${rst}
${pad}${bfg}   ▐██████▌ ▐███████▌ ▐████▌ ███████  ${rst}
${pad}${bfg}█████▌████▌ ▐███████▌ ▐████▌ ████▐████${rst}
${pad}${bfg}█████▌████▌ ▐███████▌ ▐████▌ ████▐████${rst}
${pad}${bfg}██████████████████████████████████████${rst}
${pad}${bfg}██████████████████████████████████████${rst}

EOF
