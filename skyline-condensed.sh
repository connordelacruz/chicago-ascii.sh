#!/usr/bin/env bash
# ==============================================================================
# NOTE: LEGACY FILE FOR RC'S OR SCRIPTS THAT SOURCED THIS BEFORE.
# ==============================================================================

echo "$(tput setab 3)$(tput setaf 0)DEPRECATED: skyline-condensed.sh has been renamed to skyline.sh$(tput sgr0)"
echo ""
echo "$(tput setaf 3)This script will be removed in the near future, please update usages to use skyline.sh instead.$(tput sgr0)"
echo ""

readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. "$SCRIPT_DIR/skyline.sh"
