### Introduction

Fedy4Ubuntu lets you install multimedia codecs and additional software that [Ubuntu](http://www.ubuntu.com/), like mp3 support, Adobe Flash, Oracle Java etc., and much more with just a few clicks.

### License

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see [gnu.org/licenses](http://www.gnu.org/licenses/).

Copyright (C) [Richardson Souza](mailto:richardson.allan.souza@gmail.com)

### Dependencies

Fedy4ubuntu relies on `GTK+3` and `GJS` for it's UI layer.

### Installation
1. Open terminal
2. wget https://github.com/richardson-souza/fedy4ubuntu/archive/master.zip
3. unzip master.zip
4. cd fedy4ubuntu
5. sudo chmod +x install
6. sudo ./install
6. sudo fedy4ubuntu
7. enjoy

### Usage

After installation, search for `Fedy4Ubuntu` in the menu/overview or type `fedy4ubuntu` in the terminal.

### Plugin structure

Plugins can be placed under `~/.local/share/fedy4ubuntu/plugins/`, or the system plugins directory.

Each plugin is a directory with the suffix `.plugin`, which consist of a JSON formatted metadata file. The metadata file contains information about the plugin and describes how `Fedy4Ubuntu` should run the tasks.

The plugins can run any command or scripts (`bash`, `python` etc.). In addtion to the system commands, `Fedy4Ubuntu` provides an additional command, `run-as-root` to allow running commands (e.g.- `run-as-root touch /some/file/somewhere`) or scripts (e.g.- `run-as-root -s do-stuff.sh`) as root.

Have a look at the existing plugins to know more about how to write plugins for `Fedy4Ubuntu`.

### Source code

You can get the latest source code from the [github page](https://github.com/richardson-souza/fedy4ubuntu).

`git clone https://github.com/richardson-souza/fedy4ubuntu`

### Bugs and feature requests

Please submit bugs and feature requests [here](https://github.com/richardson-souza/fedy4ubuntu/issues). Pull requests are always welcome.
