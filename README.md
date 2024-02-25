# AHK v2. Cursor Language Indicator (black & white) + Fast Language Change (CapsLock)

<kbd>Windows</kbd> <kbd>AutoHotkey v2</kbd>
 
![example]()

## Differences between the two .ahk scripts

#### <ins>Similarities of both</ins>
- Change language via <kbd>CapsLock</kbd> key (<kbd>CapsLock</kbd> key takes over the work of <kbd>Ctrl</kbd> + <kbd>Shift</kbd> hotkey).
- Enable the CapsLock function via the key combination <kbd>Shift</kbd> + <kbd>CapsLock</kbd> (tip: right Shift is more convenient here)

#### <ins>CapsLock_Timer.ahk</ins>

Changes the cursor regardless of the language change hotkeys you use (uses timer with 300ms periodicity)

- Works correctly for several languages
- Works with the Windows function “Let me use a different input method for each app window”
- Problem*: can change the colour of the cursor while launching applications (actually it is not so critical)

<details>
<summary>If you want to use the timer without Capslock, delete the following lines in the file CapsLock_Timer.ahk</summary>

```
SetCapsLockState("AlwaysOff")
+CapsLock::CapsLock
CapsLock:: {
	Send "{Ctrl Down}{Shift Down}{Ctrl Up}{Shift Up}"
}
```
</details>

#### <ins>CapsLock.ahk</ins> 

Changes cursor only via CapsLock (e.g. <kbd>Win</kbd> + <kbd>Space</kbd> will change language, but will not change cursor).

- Works correctly for the pair: English + your_language
- Doesn't work with the Windows function “Let me use a different input method for each app window”
- Uses python script for language detection (failed* to implement this in AHK). Actually requires pre-installed [Python](https://www.python.org/downloads/)

#### * - means problem on AHK operation side

## Usage
1. Make a backup of cursors by running "cursors_backup.cmd" (creates a .reg backup file on the desktop)
2. Install [AutoHotkey v2](https://www.autohotkey.com) and [Python](https://www.python.org/downloads/) if you need it
3. Move the "ahk" folder to the path "C:Windows/Cursors" (you can use the .lnk file for convenience)
4. Change your key sequence to <kbd>Ctrl</kbd> + <kbd>Shift</kbd> (for your convenience, you can run "change key sequence.cmd", then "Advanced Key Settings" tab)
5. Run your chosen .ahk script 

- To stop the script from running, you can find its tray icon, and disable it

<details>
<summary>Running on boot</summary>

1. Press <kbd>Win</kbd> + <kbd>R</kbd>, enter `shell:startup`
2. Create a shortcut of your chosen .ahk script here
</details>

## Credits
> Adapted from code posted here: 
https://gist.github.com/akaleeroy/23a6d0323f3ae0ff4e2bc7962534cc0c

 > Used cursors  https://www.deviantart.com/jailbreakvideo/art/Inspired-by-Adobe-by-XpucT-713301822
	<details>	<summary>Preview</summary>	<img src="https://web.archive.org/web/20210419204601im_/https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/1bd50e0e-6f4c-4776-b7ac-86a8cbaec466/dbsoj7i-227c3b27-7b24-4802-accb-f168ac5fbd2f.png"/>
	Several cursors are beautifully animated. You can see the animations in the folder of cursors
	</details>	If you want, you can install the cursors without using AHK scripts by right clicking on "install.inf", then "install"