# debian-daily-driver

A Debian 12, XFCE4 and LightDM setup for everyday life. In a dark theme, with a 
custom panel, extra keyboard shortcuts and handy programs.

[![](assets/programs.jpg "Programs (full width centered)")](assets/programs.jpg)

## Installation

Clone the sources in Debian 12.

```bash
git clone https://github.com/marcbperez/debian-daily-driver
cd debian-daily-driver
```

Or download the release tarball.

```bash
curl -L https://github.com/marcbperez/debian-daily-driver/archive/refs/tags/0.3.0.tar.gz \
  | tar zxvp -C .
cd debian-daily-driver-0.3.0
```

In a freshly installed system run `bash firstboot.sh`. It will give `sudo`
rights to the current user, and update and reboot the system. `install.sh` will 
configure everything else.

```bash
bash install.sh
```

## Usage

Log in to the desktop if you have not done it already.

[![](assets/login.jpg "Login (full width centered)")](assets/login.jpg)

Open the menu with `Super + Return`, anything you type will filter the
application list. There are buttons to access the Settings Manager, to lock the
session and to log out.

[![](assets/menu.jpg "Menu (full width centered)")](assets/menu.jpg)

The Application Finder is assigned to `Super + Space`, it will also filter the
application list as you type.

[![](assets/appfinder.jpg "App Finder (full width centered)")](assets/appfinder.jpg)

And there is a collapsed version assigned to `Super + Alt`.

[![](assets/appfinder-collapsed.jpg "Collapsed App Finder(full width centered)")](assets/appfinder-collapsed.jpg)

Other useful shortcuts are:

  - `Super + T` opens a terminal.
  - `Super + E` opens the file explorer.
  - `Super + W` opens the web browser.
  - `Super + F` opens a file search.
  - `Super + D` toggles the desktop.
  - `Super + P` opens the display settings.
  - `Super + S` opens the settings manager.
  - `Super + K` kills the next clicked window.
  - `Super + L` locks the session.
  - `Super + Esc` opens the Log Out menu.
  - `Super + Up` tiles a window to the top.
  - `Super + Down` tiles a window to the bottom.
  - `Super + Left` tiles a window to the left.
  - `Super + Right` tiles a window to the right.
  - `Super + 1` tiles a window to the top-left.
  - `Super + 2` tiles a window to the top-right.
  - `Super + 3` tiles a window to the bottom-left.
  - `Super + 4` tiles a window to the bottom-right.
  - `Super + 9` maximises a window.
  - `Super + 0` hides a window.
  - `Super + BackSpace` closes a window.
  - `Super + Ctrl + Left` moves a window to the previous workspace.
  - `Super + Ctrl + Right` moves a window to the next workspace.
  - `Super + Ctrl + 1` to `9` moves a window to the workspace number.
  - `Ctrl + Alt + Left` switches to the previous workspace.
  - `Ctrl + Alt + Right` switches to the next workspace.
  - `Ctrl + Alt + 1` to `9` switches to the workspace number.
  - `Ctrl + Alt + A` adds a workspace.
  - `Ctrl + Alt + D` deletes the last workspace.
  - `Alt + Tab` cycles between windows.

Most of the settings, including these shortcuts, can be configured through the
applications in the "Settings" and the "System" categories of the menu.

## Troubleshooting

The [issue tracker][issue-tracker] intends to manage and compile bugs,
enhancements, proposals and tasks. Reading through its material or reporting to
its contributors via the platform is strongly recommended.

## Contributing

This project adheres to [Semantic Versioning][semver] and to certain syntax
conventions defined in [.editorconfig][editorconfig]. To get a list of changes
refer to the [CHANGELOG][changelog]. Only branches prefixed by *feature-*,
*hotfix-*, or *release-* will be considered:

  - Fork the project.
  - Create your new branch: `git checkout -b feature-my-feature develop`
  - Commit your changes: `git commit -am 'Added my new feature.'`
  - Push the branch: `git push origin feature-my-feature`
  - Submit a pull request.

## Credits

Created by [Marc B. Perez][author] and maintained by its [author][author] and
contributors.

## License

This project is licensed under the [Apache License Version 2.0][license].

[author]: https://marcbperez.github.io
[issue-tracker]: https://github.com/marcbperez/debian-daily-driver/issues
[editorconfig]: .editorconfig
[changelog]: CHANGELOG.md
[license]: LICENSE
[semver]: http://semver.org
