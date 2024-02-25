import winreg
import ctypes

user32 = ctypes.WinDLL('user32', use_last_error=True)
#curr_window = user32.GetForegroundWindow()
#thread_id = user32.GetWindowThreadProcessId(curr_window, 0)
klid = user32.GetKeyboardLayout(0)  # or (thread_id)
lid_hex = hex(klid)

key = winreg.CreateKey(winreg.HKEY_CURRENT_USER, "Control Panel\\Cursors")
winreg.SetValueEx(key, 'for_AHK', 0, winreg.REG_EXPAND_SZ, f'{lid_hex}')
