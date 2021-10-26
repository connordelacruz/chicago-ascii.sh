#!/usr/bin/env bash

main() {
    # Colors ===================================================================
    # TODO: just use positional args instead
    # Iterate thru args, assign variables c0-c5
    max_colors=6
    i=0
    while getopts "c:" opt; do
        case $opt in
            c)
                eval "c$i=\$(tput setaf $OPTARG)"
                ((i++))
                if [[ $i == $max_colors ]]; then
                    break
                fi
                ;;
        esac
    done
    # If no colors were passed, default to blue and cyan
    if [[ $i == 0 ]]; then
        # Default: blue
        c0="$(tput setaf 4)"
        # Default: cyan
        c1="$(tput setaf 6)"
        # Update i so code below can fill in remaining colors
        i=2
    fi
    # Handle any unset color vars
    if (( i < max_colors )); then
        for (( x=$i; x<$max_colors; x++ )); do
            eval "c${x}=\$c$(( x % i ))"
        done
    fi

    # Formatting ===============================================================
    # Reset attributes
    rst="$(tput sgr0)"
    # Centering text
    # Width of output
    width=31
    cols=$(tput cols)
    # Padding
    space_count=$(( ($cols/2) - ($width/2) ))
    pad=$(printf '%*s' "$space_count" | tr ' ' ' ')

    # Print Art ================================================================

    cat << EOF

${pad}          ${c2}   ╷ ╷${rst}
${pad}          ${c2}   │ │${rst}
${pad}          ${c2}   ║ ║${rst}
${pad}          ${c2}   ║ ║${rst}
${pad}          ${c2}  ▐███▌${rst}
${pad}          ${c2}  ▐███▌     ${c4} │   │${rst}
${pad}          ${c2}  ▐███▌     ${c4} ╽   ╽${rst}
${pad}          ${c2} ▐█████▌    ${c4} ┃   ┃${rst}
${pad}          ${c2} ▐█████▌    ${c4} █████${rst}
${pad}   ${c1}  ▄██▄ ${c2} ▐█████▌    ${c4} █████${rst}
${pad}   ${c1}  ████ ${c2}▐███████▌   ${c4} █████${rst}
${pad}   ${c1}  ████ ${c2}▐███████▌   ${c4}▐█████▌${rst}
${pad}   ${c1}▐██████${c2}▐███████▌   ${c4}▐█████▌${rst}
${pad}   ${c1}▐██████${c2}▐████${c3}▐█████▌${c4}▐█████▌${rst}
${pad}   ${c1}▐██████${c2}▐████${c3}▐█████▌${c4}███████${rst}
${pad}${c0}█████▌${c1}████${c2}▐████${c3}▐█████▌${c4}████${c5}▐████${rst}
${pad}${c0}█████▌${c1}████${c2}▐████${c3}▐█████▌${c4}████${c5}▐████${rst}

EOF

}
main "$@"
