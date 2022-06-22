#!/usr/bin/bash
set -euo pipefail

case "$1" in 
stable)
    echo "You are executing stable version"
    $(which bash) ~/sketch-up/versions/stable.sh
    ;;
debug)
    echo "You are executing debug version"
    $(which bash) ~/sketch-up/versions/debug.sh
    ;;
help)
	
    echo $"Here are different usages of this script below"
    echo $"Command to execute in debug mode:  $0 debug"
    echo $"Command to execute in stable mode:  $0 stable"
    ;;
*)
    echo $"Usage: $0 {debug|stable|help}"
    exit 1
    ;;
esac
