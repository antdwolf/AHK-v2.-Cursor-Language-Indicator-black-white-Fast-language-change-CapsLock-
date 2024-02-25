; https://github.com/antdwolf

#Requires AutoHotkey v2.0
#SingleInstance

SetCapsLockState("AlwaysOff")
+CapsLock::CapsLock
CapsLock:: {
	Send "{Ctrl Down}{Shift Down}{Ctrl Up}{Shift Up}"
}

SetTimer(CheckLang, 300)

bool := 1

CheckLang() {
	global bool
	if (0x4090409 = Format("0x{:x}", DllCall("GetKeyboardLayout", "Int", DllCall("GetWindowThreadProcessId", "Int", WinActive("A"), "Int", 0)))) {
		if (bool = 1) {
			; English keyboard layout
			
			RegWrite "%SystemRoot%\cursors\ahk\light\working.ani", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "AppStarting"
			RegWrite "%SystemRoot%\cursors\ahk\light\normal.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Arrow"
			RegWrite "%SystemRoot%\cursors\ahk\light\link.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Hand"
			RegWrite "%SystemRoot%\cursors\ahk\light\_text.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "IBeam"
			RegWrite "%SystemRoot%\cursors\ahk\light\busy.ani", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Wait"
			
			RegWrite "%SystemRoot%\cursors\ahk\light\precision.cur",	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Crosshair"
			RegWrite "%SystemRoot%\cursors\ahk\light\help.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Help"
			RegWrite "%SystemRoot%\cursors\ahk\light\unavailable.cur", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "No"
			RegWrite "%SystemRoot%\cursors\ahk\light\handwriting.cur", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "NWPen"
			RegWrite "%SystemRoot%\cursors\ahk\light\person.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Person"
			RegWrite "%SystemRoot%\cursors\ahk\light\pin.cur", 			"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Pin"
			RegWrite "%SystemRoot%\cursors\ahk\light\move.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "SizeAll"
			RegWrite "%SystemRoot%\cursors\ahk\light\diagonal2.ani", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "SizeNESW"
			RegWrite "%SystemRoot%\cursors\ahk\light\vertical.ani", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "SizeNS"
			RegWrite "%SystemRoot%\cursors\ahk\light\diagonal1.ani", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "SizeNWSE"
			RegWrite "%SystemRoot%\cursors\ahk\light\horizontal.ani", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "SizeWE"
			RegWrite "%SystemRoot%\cursors\ahk\light\alternate.cur", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "UpArrow"
			
			SPI_SETCURSORS()
			bool := 0
		}
	}
	else {
		if (bool = 0) {
			; Non-English keyboard layout

			RegWrite "%SystemRoot%\cursors\ahk\black\working.ani", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "AppStarting"
			RegWrite "%SystemRoot%\cursors\ahk\black\normal.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Arrow"
			RegWrite "%SystemRoot%\cursors\ahk\black\link.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Hand"
			RegWrite "%SystemRoot%\cursors\ahk\black\_text.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "IBeam"
			RegWrite "%SystemRoot%\cursors\ahk\black\busy.ani", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Wait"
			
			RegWrite "%SystemRoot%\cursors\ahk\black\precision.cur",	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Crosshair"
			RegWrite "%SystemRoot%\cursors\ahk\black\help.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Help"
			RegWrite "%SystemRoot%\cursors\ahk\black\unavailable.cur", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "No"
			RegWrite "%SystemRoot%\cursors\ahk\black\handwriting.cur", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "NWPen"
			RegWrite "%SystemRoot%\cursors\ahk\black\person.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Person"
			RegWrite "%SystemRoot%\cursors\ahk\black\pin.cur", 			"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "Pin"
			RegWrite "%SystemRoot%\cursors\ahk\black\move.cur", 		"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "SizeAll"
			RegWrite "%SystemRoot%\cursors\ahk\black\diagonal2.ani", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "SizeNESW"
			RegWrite "%SystemRoot%\cursors\ahk\black\vertical.ani", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "SizeNS"
			RegWrite "%SystemRoot%\cursors\ahk\black\diagonal1.ani", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "SizeNWSE"
			RegWrite "%SystemRoot%\cursors\ahk\black\horizontal.ani", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "SizeWE"
			RegWrite "%SystemRoot%\cursors\ahk\black\alternate.cur", 	"REG_EXPAND_SZ", "HKEY_CURRENT_USER\Control Panel\Cursors", "UpArrow"
			
			SPI_SETCURSORS()
			bool := 1
		}
	}
}

SPI_SETCURSORS() {
	DllCall("SystemParametersInfo", "UInt", 0x0057, "UInt", 0, "UInt", 0, "UInt", 0)
}
