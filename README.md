# debian-daily-driver

A Debian 12 and XFCE4 configuration for everyday life. With a dark theme, a
custom panel and extra keyboard shortcuts, plus a set of handy programs.

[![](/assets/programs.png "Programs (full width centered)")](/assets/programs.png)

## Installation

Clone the sources in Debian 12.

```bash
git clone https://github.com/marcbperez/debian-daily-driver
cd debian-daily-driver
```

Or download the release tarball.

```bash
curl -L https://github.com/marcbperez/debian-daily-driver/archive/refs/tags/0.1.0.tar.gz \
  | tar zxvp -C .
cd debian-daily-driver-0.1.0
```

In a freshly installed system run `bash firstboot.sh`. It will give `sudo`
rights to the current user, and update and reboot the system. `install.sh` will 
configure everything else.

```bash
bash install.sh
```

## Usage

Log in to the desktop if you have not done it already.

[![](/assets/login.png "Login (full width centered)")](/assets/login.png)

Open the menu with `Super + Space`, anything you type will filter the
application list. There are buttons to access the Settings Manager and to log 
out.

[![](/assets/menu.png "Menu (full width centered)")](/assets/menu.png)

The Application Finder is assigned to `Alt + F3`, it will also filter the
application list as you type.

[![](/assets/appfinder.png "App Finder (full width centered)")](/assets/appfinder.png)

And there is a collapsed version assigned to `Alt + F2`.

[![](/assets/appfinder-collapsed.png "Collapsed App Finder(full width centered)")](/assets/appfinder-collapsed.png)

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

This project was created by [Marc B. Perez][author] and maintained by its
[author][author] and contributors.

## License

This project is licensed under the [Apache License Version 2.0][license].

[author]: https://marcbperez.github.io
[issue-tracker]: https://github.com/marcbperez/debian-daily-driver/issues
[editorconfig]: .editorconfig
[changelog]: CHANGELOG.md
[license]: LICENSE
[semver]: http://semver.org
