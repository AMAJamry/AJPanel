<!-- ============== MAIN ============== -->
<div align="center"><img src="https://github.com/AMAJamry/AJPanel/assets/164648277/08fb2f4c-a792-4066-991c-0ba31366116f"></div>
<h1 align="center">AJPanel v3.9.1</h1>
<br>

## ❔ About
### AJPanel is a free plugin for Enigma2 based STBs (Set-Top Boxes).

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
### 🔷 Method-1:
* Run the following Telnet command (which will automatically install the right package for your device):
```
wget https://raw.githubusercontent.com/AMAJamry/AJPanel/main/installer.sh -O - | /bin/sh
```
* or
```
wget https://raw.githubusercontent.com/biko-73/AJPanel/main/installer.sh -O - | /bin/sh
```

### 🔷 Method-2:
* Download the suitable package file (**`ipk`** or **`deb`**) to any directory ( Example /tmp/ ).
* Then install the **ipk** with:
```
opkg install /tmp/*.ipk
```
* or install the **deb** with:
```
dpkg -i /tmp/*.deb
```

### 🔷 Method-3:
* Download the suitable package file (**`ipk`** or **`deb`**) to any directory ( example **`/tmp/`** ).
* Then install the **`ipk`** with:
```
opkg update
opkg install --force-overwrite /tmp/*.ipk
```
or install the **`deb`** with:
```
apt-get update
dpkg -i --force-overwrite /tmp/*.deb
apt-get install -f -y
```

<br><hr>

<!-- ============== INSTALLATION ============== -->

## 🔄 Update
You can update AJPanel as follows:
1. From AJPanel Main Page, select **Settings** (Green Button).
2. From **Settings** page, click **Menu** Button, then select **Update AJPanel**
   - You will be asked to confirm the update (if there is a higher version).

<br><hr>

<!-- ============== GUIDE/HELP ============== -->

## 📜 Guide
* [Accessing Signal Monitor](help/AccessingSignalMonitor.jpg)
* [Assigning Hotkeys](help/AssigningHotkeys.jpg)
* [Channel Browser](help/ChannelBrowser.jpg)
* [Custom Menu](help/CustomMenu.jpg)
* [IPTV - Change Reference for a Bouquet](help/IPTV_ChangeReferenceForBouquets.jpg)
* [IPTV - Favourite Servers](help/IPTV_FavouriteServers.jpg)
* [Player Bar - Color](help/PlayeBarColor.jpg)
* [Player Bar - Seek Jump Time](help/PlayerBar_SeekJumpTime.jpg)
* [Screenshot - Hotkeys](help/Screenshot_Hotkeys.jpg)
* [Screenshot - OSD File Name](help/Screenshot_OSDFileName.jpg)
* [Share EPG](help/ShareEPG.jpg)

