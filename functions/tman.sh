#!/bin/bash

if [[ $# -lt 2 ]]; then
	cmd=${1}
	sec=''
else
	cmd=${2}
	sec=${1}
fi

man $sec $cmd | col -bx | textmate

osascript <<OSAEND
tell application "TextMate"
	set name of front document to "$cmd"
	select insertion point before character 1 of front of document
end tell
OSAEND
