###############################################################################################################
###  Menu File																								###
###############################################################################################################

	- The main menu file name must be "ajpanel_menu.xml".
	- Other menu files must be in the format "ajpanel_menu_xxx.xml"	(must start with "ajpanel_menu")
	- Menu files can be imported to xml file with 2 methods:
		1- Using the Menu option "Insert Menu XML File" (from the Custom Menu).
		2- Manually (by editing the Custom Menu file).
			.. Menu files can be a the xml file name only or full path of xml file.
			.. If full directory path is not used, AJPanel will assume that file is in your backup directory.
	- Note:
		Once a new xml file is imported, its related pictures directory can be fixed with the option "Change Pictures Path".

###############################################################################################################
###  Menu Attributes																						###
###############################################################################################################

	==============================================================================================
	General Attributes (for List and Grid Menus)
	==============================================================================================

		Attribute			Usage							Remarks					Default Value
		...............		..............................	....................	..............................................
		mode				List or Grid Menu				list/grid/grid1			list (see Menu Mode)
		title				Menu item title					Mandatory				No default value (must be set by user)
		info				Menu item brief description		Any text				Default is title text
		picpath				Full path for picture files		See Picture Files Path	See Picture Files Path
		width				Menu width						Range = See Menu Mode	800  (see Menu Mode)
		height				Menu height 					Range = See Menu Mode	1000 (see Menu Mode)
		fg					Menu text color					Format = See Colors		"#00ffffff"
		bg					Menu background color			Color/jpg/png/Base64	"#0c001122" ... See : See Colors &  Picture Files Path
		title_fg			Title text color				Format = See Colors		"#00ffffaa"
		title_bg			Title background color			Format = See Colors		"#11000011"
		title_font_size		Title font						Range  = 20 - 50		50
		icon				Path of menu item icon			See Icons Files			Default icons are set by the panel.
		ask					Confirmation question			See Confirmation		No confirmation question

	==============================================================================================
	List-Menu Attributes
	==============================================================================================

		Attribute			Usage							Remarks					Default Value
		...............		..............................	....................	..............................................
		font_size			Menu font						Range  = 10 - 50		30
		line_gap			Menu line top/bottom spacing	Range  = 0 - 100		0
		align_items			Menu text alignment				left/center/reight		"left"
		cursor_fg			Pointer text color				Format = See Colors		"#11ff8000"
		cursor_bg			Pointer background color		Format = See Colors		"#11442244"

	==============================================================================================
	Grid-Menu Attributes
	==============================================================================================

		Attribute			Usage							Remarks					Default Value
		...............		..............................	....................	..............................................
		title1_fg			1st Info Line text color		Format = See Colors		Bright Green
		title1_bg			1st Info Line background color	Format = See Colors		Title color (transparent if wallpaper is used)
		title2_fg			2nd Info line text color		Format = See Colors		White
		title2_bg			2nd Info line background		Format = See Colors		Title color (transparent if wallpaper is used)
		num_fg				Item/Page number				Format = See Colors		Bright Grey
		num_bg				Item/Page number				Format = See Colors		Title color (transparent if wallpaper is used)
		shade				Items area Boxes background		jpg/png/Base64			No shade
		cursor				Pointer background				Color/jpg/png/Base64	Default frame	... See Colors &  Picture Files Path
		box_gap				Gap between boxes				Range  = 0 - 100		0

###############################################################################################################
###  Menu Mode																								###
###############################################################################################################

	- The default mode is a list-menu.

	- List Mode Menu:
		.. Width range  : 500 - 1920
		.. Height range : 400 - 1080	... Height = maximum menu height (auto adjusted based to total items).

	- Grid Mode Menu:
		.. Width range  : 600 - 1920
		.. Height range : 600 - 1080
		.. Attributes that are ignored in grid mode : line_gap , font_size , cursor_fg , cursor_bg
		.. If mode="grid"  : Small icons will be stretched to fill the picture height.
		.. If mode="grid1" : Small icons will retain their size.
		.. Default number of items in a page = 5 cols x 4 rows.
			Columns limits	: 3 to 9
			Rows limits		: 3 to 6
		.. Rows/Cols can be changed as follows:
			mode				Cols	Rows	Remarks
			..........			...		....	.................................................................
			mode="grid"			5		4		Grid Menu (small icons are will stretched to the picture area)
			mode="grid1"		5		4		Grid Menu (small icons size is not changed)
			mode="grid_6x3"		6		3		Grid Menu (small icons are will stretched to the picture area)
			mode="grid1_8x5"	8		5		Grid Menu (small icons size is not changed)

###############################################################################################################
###  Colors																									###
###############################################################################################################

	Color format = "#AARRGGBB" (Alpha_channel, Red, Green, Blue).
		.. Examples:
			"#00FF8000" = Opaque Orange
			"#55FFFF00" = Yellow with transparency

###############################################################################################################
###  Confirmation																							###
###############################################################################################################

	The panel can confirm with the user before taking any action.
		.. If the attribute "ask" is not used, there will be no cofirmation.
		.. I ask="" is added, the panel will confirm with the question "Continue ?" before taking action.
		.. I ask="Are youe sure ?", the panel will confirm with this custom question before taking action.

###############################################################################################################
###  Menu Items Separator																					###
###############################################################################################################

	Separators are only valid for List Mode Menu and can be added with:

	<separator/>

###############################################################################################################
###  Picture Files Path																						###
###############################################################################################################

	picpath:

		For Main Menu element "ajp_menu", picpath can be set as a global directory path for all picture files (wallpaper/shade/cursor/icon).
		So, if you set : picpath="/media/hdd/myPictures" , AJPanel will use this directory for pictures that have no directory.

		Examples for picpath="/media/hdd/myPictures":
			- Wallper:
				- Example-1: bg="myWallpaper.jpg"				... Will be converted to : "/media/hdd/myPictures/myWallpaper.jpg"
				- Example-2: bg="/media/usb/myWallpaper.jpg"	... Will be converted to : "/media/usb/myWallpaper.jpg"

			- Icons:
				- Example-1: icon="skin.png"					... Will be converted to : "/media/hdd/myPictures/skin.png"
				- Example-2: icon="/media/etc/skin.png"			... Will be converted to : "/media/etc/skin.png".

	Wallpaper:

		For Main Menu element "ajp_menu", "bg" can be set to add a wallpaper as menu background. Picture files and colors can be used.
		- Example-1 (picture file path)	: bg="/media/usb/myWallpaper.jpg"
		- Example-2 (Base64 format)		: bg="data:image/png;base64,ibc..."
		- Example-3 (Color)				: bg="#11003344"

	Icons:

		- Default icons are set by the panel.
			.. For Channels	: If icon is not set, AJPanel will automatically assign a PIcon (if available).
			.. For Movies	: If icon is not set, AJPanel will automatically assign a post (if exists in same movie directory).

		- If custom icon is required, it can be added as follows:
			Method-1: Add the full path of the icon file. 			... Example : icon="/media/myIcon.png"
			Method-2: Add a Base64-picture string.		 			... Example : icon="data:image/png;base64,iVBORw0KGg..."

###############################################################################################################
###  Grid Menu Shade/Cursor																					###
###############################################################################################################

	Grid Menu Shade:

		For Main Menu element "ajp_menu", "shade" can be set to change the background of menu items. Colors can be used too.
		- Example-1 (picture file path)	: shade="/media/usb/myShadePic.png"
		- Example-2 (Base64 format)		: shade="data:image/png;base64,ibc..."
		- Example-3 (Color)				: shade="#11003344"

		Note: To separate between item, add a shade picture with a transparent thin frame.

	Grid Menu Cursor:

		For Main Menu element "ajp_menu", "cursor" can be set to change the cursor (pointer).
		- Example-1 (picture file path)	: shade="/media/usb/myPic.png"
		- Example-2 (Base64 format)		: shade="data:image/png;base64,ibc..."

###############################################################################################################
###  Calling other custom menu xml file																		###
###############################################################################################################

	Other custom menus can be added in different ways:

	Method-1: Add menu files from the options : "Insert Menu XML File".

	Method-2: Add the file name without the full path (if the menu fileis in your backup path).
				Example : <item name="External Menu">ajpanel_menu_ajp1.xml</item>

	Method-3: Add the full path of the menu file as follows:
				Example : <item name="External Menu">/media/hdd/ajpanel_menu_ajp1.xml</item>

###############################################################################################################
###  Using special characters (< > ' " &)																	###
###############################################################################################################

	........................................................................
	Method-1: Replace the characters with their escape codes
	........................................................................
		Example:
			<item name="Testing Special Characters (E.g. : &amp;)"> ls /home &amp;&amp; echo '' &amp;&amp; df </item>

		Code table:
			Char	Escape String	Alternatively
		    ....	.............	.............
		    <		&lt;			&#60;
		    >		&gt;			&#62;
		    '		&apos;			&#39;
		    "		&quot;			&#34;
		    &		&amp;			&#38;

	........................................................................
	Method-2: Surround the commands with CDAT strings
	........................................................................
		Example:
			<![CDATA[
				ls /home && echo '' && df
			]]>

	........................................................................
	Method-3: Put the commands in a script file and call the script path
	........................................................................
		Example:
			<item name="Run a Script File">/media/usb/aaa/myScript.sh</item>

###############################################################################################################
###  View description (or change-log) of a custom menu														###
###############################################################################################################

	To show descritpion of your custom menu (or change-log):
		Method-1 (internal text):
			<item name="About AJPanel">This is a test panel (v1.0)</item>

		Method-2 (using a file):
			<item name="About AJPanel">/media/hdd/xx/my_panel.txt</item>

###############################################################################################################
### Main Menu Setup																							###
###############################################################################################################
