# keymash <img src="res/keymash-black.png" height="32px">

Rapid fire buttons for gaming. This tool is currently under construction. As of right now, its only features are:

* Triggers RapidFire on the `1` and `e` key. Hold them down and the key will fire every 200ms until released. Typing with the key should not create duplicate events.
* Remaps the fourth mouse button to `shift`.

### TODO

* Add a Configuration system to store what keys should be remapped/set to rapid fire.
* Add a tray menu to add/remove rapid fire and remap keys and save them to config.
* possibly port to a real language, such as Python using [mouse](https://github.com/boppreh/mouse) and [keyboard](https://github.com/boppreh/keyboard) for cross-platform support and pyqt or wxpython for gui. Use nuitka or pyoxidizer or something similar to produce distributable binary packages.

## To Use

[Download the Latest release](https://github.com/pigsflew/keymash/releases); simply run the executable.

You can alternately clone or download the repository and use AutoHotkey on the script itself; the entrypoint is `src/KeyMash.ahk`.

## To build:

### Pull the repository:

```
git clone git@github.com:pigsflew/keymash.git
cd keymash
```

### Install Autohotkey

I recommend using Scoop.

```
iwr -useb get.scoop.sh | iex
scoop bucket add extras
scoop install autohotkey
```

Alternatively, you can use [chocolatey](https://chocolatey.org) or [download it directly](http://autohotkey.com)

### Build

```
./bin/build.bat
```

It will build the executable to `./dist/KeyMash.exe`.
