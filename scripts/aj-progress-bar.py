#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ============================================================================================================
# Progress-Bar v1.0.3 (by AMAJamry)
# ============================================================================================================
# Execution:
#	Run from AJPanel Terminal or File Manage
#	Run from Telnet with : python /usr/script/aj-prog-bar.py
# ------------------------------------------------
# Usage Example:
#	updateBar(curVal, maxVal, prefix="Progress", width=40, mark="#")
# ------------------------------------------------
# Function Parameters:
#	curVal	: Current progress value
#	maxVal	: Maximum progress value
#	prefix	: Text to be placed on the left of Progress-Bar	... Optional .. Default = "Progress"
#	width	: Width of Progress-Bar (number of characters)	... Optional .. Default = 40 characters
#	mark	: Progress character 							... Can be : "▇"  ...  = u"\u2587" = chr(9607)  ...  Optional .. Default = "#"
#	markFg	: Progress character color						... 0=Black 1=Red 2=Green 3=Yellow 4=Blue 5=Purple 6=Cyan 7=White
# ------------------------------------------------
import sys
def updateBar(curVal, maxVal, prefix="Progress", suffix="", width=40, mark="#", markFg="2"):
	prog = int(width * curVal // float(maxVal))
	sys.stdout.write("\r%s : [\x1B[3%sm%s\x1B[0m] %d%% %s" % (str(prefix), markFg, mark * prog + "." * (width - prog), 100 * (curVal / float(maxVal)), str(suffix)))
	if curVal == maxVal: sys.stdout.write("\n")
	sys.stdout.flush()

# ============================================================================================================
# Example
# ============================================================================================================
minVal = 1		# Range start
maxVal = 100	# Range end

from time import sleep
for curVal in range(minVal, maxVal + 1):
	# Do your work here
	sleep(0.03)

	# Update Progress-Bar
	updateBar(curVal, maxVal, markFg=4)		# 0=Black 1=Red 2=Green 3=Yellow 4=Blue 5=Purple 6=Cyan 7=White

print("Finished")
