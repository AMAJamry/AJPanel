#!/bin/bash
# ============================================================================================================
# Progress-Bar v1.0.1 (by AMAJamry)
# ============================================================================================================
# Execution:
#	Run from AJPanel Terminal or File Manage
#	Run from Telnet with : /usr/script/aj-prog-bar.sh
# ------------------------------------------------
# Usage Example:
#	updateBar curVal maxVal "Progress" 40 "#"
# ------------------------------------------------
# Function Parameters:
#	curVal	: Current progress value
#	maxVal	: Maximum progress value
#	prefix	: Text to be placed on the left of Progress-Bar	... Optional .. Default = "Progress"
#	width	: Width of Progress-Bar (number of characters)	... Optional .. Default = 40 characters
#	mark	: Can be : "▇"	... = u"\u2587" = chr(9607)		... Optional .. Default = "#"
# ------------------------------------------------
function updateBar {
	curVal=$1 ; maxVal=$2 ; prefix=$3 ; width=$4 ; mark=$5
	if [ -z $prefix ]; then prefix="Progress"; fi
	if [ -z $width ]; then width=40; fi
	if [ -z $mark ]; then mark="#"; fi
    let perc=($curVal*100/$maxVal*100)/100; let filled=(${perc}*$width)/100
    filler="\x1b[36m"$(printf "%${filled}s"); blank=$(printf "%$((width-filled))s")"\e[0m"
    printf "\r$prefix : [${filler// /$mark}${blank// /.}] ${perc} %% "
    if [ $curVal -eq $maxVal ]; then printf "\n"; fi
}

# ============================================================================================================
# Example
# ============================================================================================================
minVal=1		# Range start
maxVal=100		# Range end

for curVal in $(seq $minVal $maxVal); do
	# Do your work here
    sleep 0.03

	# Update Progress-Bar
    updateBar $curVal $maxVal		# Or : updateBar $curVal $maxVal "Processing" 60 "*"
done
echo "Finished!"
