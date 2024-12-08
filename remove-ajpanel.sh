#!/bin/sh
# ============================================================================================================
# Purpose	: Completely remove AJPanel
# Usage		: wget -q https://raw.githubusercontent.com/AMAJamry/AJPanel/main/remove-ajpanel.sh -O - | /bin/sh
# Home Page	: https://github.com/AMAJamry/AJPanel
# ============================================================================================================

# ============================================================================================================
# Remove Package
echo Removing AJPanel Package ...
if which dpkg > /dev/null 2>&1; then
	apt-get purge --auto-remove -y enigma2-plugin-extensions-ajpanel &>/dev/null
	dpkg --purge --force-all enigma2-plugin-extensions-ajpanel &>/dev/null
	dpkg --remove --force-depends enigma2-plugin-extensions-ajpanel &>/dev/null
else
	opkg remove enigma2-plugin-extensions-ajpanel &>/dev/null
	opkg remove --force-remove enigma2-plugin-extensions-ajpanel &>/dev/null
	opkg remove --force-depends enigma2-plugin-extensions-ajpanel &>/dev/null
fi

# ============================================================================================================
# Delete files and direcotry
echo Deleting related files ...
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/AJPan &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.list &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.postinst &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.postrm &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.control &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.preinst &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.prerm &>/dev/null

# ============================================================================================================
# Restart GUI
echo Restarting GUI ...
killall -9 enigma2

# ============================================================================================================
# End
echo Done
echo
