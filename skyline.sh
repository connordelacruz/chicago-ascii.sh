#!/bin/bash

# Color escape sequences
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

${pad}               ╷ ╷                    ${rst}
${pad}               │ │                    ${rst}
${pad}               ║ ║                    ${rst}
${pad}               ║ ║                    ${rst}
${pad}              ▐███▌                   ${rst}
${pad}              ▐███▌           │   │   ${rst}
${pad}              ▐███▌           ╽   ╽   ${rst}
${pad}             ▐█████▌          ┃   ┃   ${rst}
${pad}             ▐█████▌          █████   ${rst}
${pad}     ▄██▄    ▐█████▌          █████   ${rst}
${pad}     ████   ▐███████▌         █████   ${rst}
${pad}     ████   ▐███████▌        ▐█████▌  ${rst}
${pad}   ▐██████▌ ▐███████▌        ▐█████▌  ${rst}
${pad}   ▐██████▌ ▐███████▌ ▗▄▄▄▄▖ ▐█████▌  ${rst}
${pad}   ▐██████▌ ▐███████▌ ▐████▌ ███████  ${rst}
${pad}█████▌████▌ ▐███████▌ ▐████▌ ████▐████${rst}
${pad}█████▌████▌ ▐███████▌ ▐████▌ ████▐████${rst}
${pad}██████████████████████████████████████${rst}
${pad}██████████████████████████████████████${rst}

EOF
