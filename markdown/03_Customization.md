## <span id="section3-0">3.0 - Customization</span>
### <span id="section3-1">3.1 - Appearance</span>

### <span id="section3-2">3.2 - Auto-config</span>

### <span id="section3-3">3.3 - Persistent Software</span>
For software not included in arcOS, but available as a deb file, users can utilize the `download-packages` command in a terminal to cache the packages in persistent storage for installation at boot time, before Station Setup runs. Prior to using this tool, users should test installing the packages manually using `apt`. Once any dependency issues are resolved, pass the package list to the command as follows:

```
N0CALL:~ $ download-packages package_1 [package_2 package_3]
```

Each time the command is used, the downloaded packages are stored in `/arcHIVE/QRV/.packages/packages-xyz123`. This allows for users to remove some
packages without disturbing other groups of packages. Users are encouraged to give the `packages-xyz123` directory a more memorable name.

If a piece of software is not available from a repository, and the deb file must be manually downloaded, users can manually create a directory for the deb file in `/arcHIVE/QRV/.packages`.

### <span id="section3-4">3.4 - User Modules</span>

[Back to top](#top)

---
