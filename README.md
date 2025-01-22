<!-- ============== MAIN ============== -->
<div align="center"><img src="https://github.com/AMAJamry/AJPanel/assets/164648277/08fb2f4c-a792-4066-991c-0ba31366116f"></div>
<h1 align="center">AJPanel v10.4.0</h1>
<br>

## ❔ About
### AJPanel is a plugin for Enigma2 based STBs (Set-Top Boxes).

<br><hr>

<!-- ============== FEATURE ============== -->

## ⭐ Features 

* File Manage
* IPTV
* Movies Browser
* Services/ Channels Tools
* Bouquet Editor
* PIcons Manager
* EPG Tools
* Terminal Emulator
* SoftCam Tools
* Plugins
* Backup/Restore
* Date/Time
* Network
* Context-Menu -> Channels Browser
* Context-Menu -> Find
* Signal Monitor
* Custom Menu
* Download Manager
* FTP File Manager

<br><hr>

<!-- ============== INSTALLATION ============== -->
## 💻 Installation
### ◻️ Method-1:
* Run the following Telnet command (which will automatically install the right package for your device):
```
wget --no-check-certificate https://raw.githubusercontent.com/AMAJamry/AJPanel/main/installer.sh -O - | /bin/sh
```

### ◻️ Method-2:
* Download the suitable package file (**`ipk`** or **`deb`**) to any directory ( Example **`/tmp/`** ).
* Then install the **`ipk`** with:
```
opkg install /tmp/*.ipk
```
* or install the **`deb`** with:
```
dpkg -i /tmp/*.deb
```
* or
```
apt-get update
dpkg -i --force-overwrite /tmp/*.deb
apt-get install -f -y
```

### ◻️ Method-3:
* Download the suitable package file (**`ipk`** or **`deb`**) to any directory ( example **`/tmp/`** ).
* Then install the **`ipk`** with:
```
opkg update
opkg install --force-overwrite /tmp/*.ipk
```
* or install the **`deb`** with:
```
apt-get update
dpkg -i --force-overwrite /tmp/*.deb
apt-get install -f -y
```

<br><hr>

<!-- ============== UPDATE ============== -->

## 🔄 Update
You can update AJPanel as follows:
1. From AJPanel Main Page, select **Settings** (Green Button).
2. From **Settings** page, click **Menu** Button, then select **Update AJPanel**
   - You will be asked to confirm the update (if there is a higher version).

<br><hr>

<!-- ============== REMOVAL ============== -->
## 🚮 Remove
* Run the following Telnet command:
```
wget -q https://raw.githubusercontent.com/AMAJamry/AJPanel/main/remove-ajpanel.sh -O - | /bin/sh
```

<br><hr>

<!-- ============== GUIDE/HELP ============== -->

## 📜 Guide
* [Archive Files & Directories from Different Paths](help/Archive_from_different_paths.jpg)
* [Channels Browser](help/ChannelsBrowser.jpg)
* [Custom Menu - Samples](help/Custom_Menu_Samples.jpg)
* [File Manager - Remove a Plugin Related to a Package File](help/Remove_package_using_pkg_file.jpg)
* [File Manager - View Non-UTF8 Encoded Text Files](help/View_non_UTF8_file.jpg)
* [Hotkeys - Assign](help/HotkeysAssign.jpg)
* [IPTV - Change Reference for a Bouquet](help/IPTV_ChangeReferenceForBouquets.jpg)
* [IPTV - Favourite Servers](help/IPTV_FavouriteServers.jpg)
* [Player Bar - Colors](help/PlayerBarColors.jpg)
* [Player Bar - Seek Jump Time](help/PlayerBar_SeekJumpTime.jpg)
* [Screenshot - Hotkeys](help/Screenshot_Hotkeys.jpg)
* [Screenshot - OSD File Name](help/Screenshot_OSDFileName.jpg)
* [Share EPG](help/ShareEPG.jpg)
* [Signal Monitor - Access Methods](help/SignalMonitor_accees.jpg)
* [Subtitle – Searching Local Files for Suitable Subtitle (srt file)](help/Subtitle_find_local_srt.jpg)
* [Subtitle – Text Color](help/SubtitleTextColor.jpg)
* [Terminal - Custom Commands File](help/CustomCommandsFile.jpg)
