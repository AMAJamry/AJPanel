#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ============================================================================================================
# Progress-Bar v1.0.1 (by AMAJamry)
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
#	mark	: Can be : "▇"	... = u"\u2587" = chr(9607)		... Optional .. Default = "#"
# ------------------------------------------------
import sys
def updateBar(curVal, maxVal, prefix="Progress", action="", width=40, mark="#"):
	prog = int(width * curVal // float(maxVal))
	sys.stdout.write("\r%s : [ %s ] %d%% %s" % (str(prefix), mark * prog + "." * (width - prog), 100 * (curVal / float(maxVal)), str(action)))
	if curVal == maxVal: print("\n")
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
	updateBar(curVal, maxVal, action="Downloading %s ... " % curVal)

print("Finished")
