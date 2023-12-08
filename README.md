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
curl -L https://github.com/marcbperez/debian-daily-driver/archive/refs/tags/0.2.0.tar.gz \
  | tar zxvp -C .
cd debian-daily-driver-0.2.0
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

Open the menu with `Super + Space`, anything you type will filter the
application list. There are buttons to access the Settings Manager and to log 
out.

[![](assets/menu.jpg "Menu (full width centered)")](assets/menu.jpg)

The Application Finder is assigned to `Alt + F3`, it will also filter the
application list as you type.

[![](assets/appfinder.jpg "App Finder (full width centered)")](assets/appfinder.jpg)

And there is a collapsed version assigned to `Alt + F2`.

[![](assets/appfinder-collapsed.jpg "Collapsed App Finder(full width centered)")](assets/appfinder-collapsed.jpg)

Other useful shortcuts are:

  - `Super + L` locks the session.
  - `Super + T` opens a terminal.
  - `Super + F` opens the file explorer.
  - `Super + W` opens the web browser.

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
