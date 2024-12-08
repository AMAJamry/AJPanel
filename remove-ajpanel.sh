echo Removeing AJPanel ...
opkg remove enigma2-plugin-extensions-ajpanel &>/dev/null
opkg remove --force-remove enigma2-plugin-extensions-ajpanel &>/dev/null
opkg remove --force-depends enigma2-plugin-extensions-ajpanel &>/dev/null
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/AJPan &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.list &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.postinst &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.postrm &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.control &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.preinst &>/dev/null
rm -f /var/lib/opkg/info/enigma2-plugin-extensions-ajpanel.prerm &>/dev/null
echo Restarting GUI ...
killall -9 enigma2
echo Done
