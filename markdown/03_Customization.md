## <span id="section3-0">3.0 - Customization</span>
### <span id="section3-1">3.1 - Appearance</span>
Users/groups can customize the static desktop background image in two ways. Place the desired `jpg` image(s) in the following location(s):
  - System-level: `/arcHIVE/.wallpaper.jpg` (set *before* Station Setup)
  - User-specific: `/arcHIVE/QRV/N0CALL/.wallpaper.jpg` (set *after* Station Setup)

Users can also set the desktop background to a slideshow of images. Place the desired slideshow images in a directory named `/arcHIVE/QRV/N0CALL/.slideshow`.

> **Developer Note:**
>
> Many theme settings can be set from the command line using the `gsettings` utility. To see a full list of configurable items, run:
>
> ```
> N0CALL:~ $ gsettings list-recursively
> ```

### <span id="section3-2">3.2 - Persistent Software</span>
For software not included in arcOS, but available as a deb package file, users can utilize the `download-packages` command in a terminal to cache the packages in persistent storage for installation at boot time, before Station Setup runs. Prior to using this tool, users should test installing the packages manually using `apt`. Once any dependency issues are resolved, pass the package list to the command as follows:

```
N0CALL:~ $ download-packages package_1 [package_2 package_3]
```

Each time the command is used, the downloaded packages are stored in `/arcHIVE/QRV/.packages/packages-xyz123`. This allows for users to remove some
packages without disturbing other groups of packages. Users are encouraged to give the `packages-xyz123` directory a more memorable name.

If a piece of software is not available from a repository, and the deb file must be manually downloaded, users can manually create a directory for the deb file in `/arcHIVE/QRV/.packages`.

### <span id="section3-3">3.3 - User Modules</span>
Users/groups are encouraged to create their own `USER` modules/scripts to extend or modify functionality. A private or public [https://github.com/kg4vdk/kg4vdk-user-modules](repository on GitHub) can be a great way for groups to share modules. Take a look at some of the `COMMUNITY` and `CORE` modules if you're looking for ideas to get your own module started.

`USER` modules can be used to personalize the system appearance, customize system preferences, install software, or do just about anything a user wants to do at Station Setup runtime. If it can be done from the command line and doesn't require a system restart/logout to work, it's a good candidate to be handled by a `USER` module.

`USER` modules should be placed in `/arcHIVE/QRV/N0CALL/arcos-linux-modules/USER` and can be numerically named to allow for ordering (e.g. `42_MY-COOL-MODULE.sh`).

One of the final `CORE` modules restarts the Cinnamon desktop environment (this is why the screen flashes back momentarily during Station Setup). If your `USER` module needs to run before the Cinnamon restart, simply make sure the module script includes “_PRE_” in its filename (e.g. `00_PRE_MY-COOL-MODULE.sh`).

### <span id="section3-4">3.4 - Auto-config</span>
Once configured to your liking, you can set arcOS to automatically configure your station with the information saved by “Station Setup”. To enable auto-configuration, simply copy your station configuration from `/arcHIVE/.operators/station-info_$CALLSIGN` to a hidden file named `/arcHIVE/.autoconfig`.

[Back to top](#top)

---
