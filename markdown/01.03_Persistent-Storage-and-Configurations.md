### <span id="section1-3">1.3 - Persistent Storage and Configurations</span>
**Some applications are configured to use persistence by default, and others allow for selective saving of configurations to a "QRV Profile".**

**Applications/utilities which are persistent by default include:**

- Firefox (Web Browser)
- Thunderbird (Email Client)
- `$HOME/.ssh` (SSH keys and config files)
- `$HOME/.gnupg` (GPG keys and config files)
- Calendar
- Sticky Notes
- Applications added to/rearranged on the panel

**Browse the "Main Menu > arcOS Tools" category for other applications/utilities which offer selective persistence.**

A good first step as a new arcOS user would be to connect to a Wi-Fi network, then use the **"arcOS Tools > Save Wi-Fi Connection"** utility to ensure that arcOS reconnects to that network after a reboot.

A good second step, if you already have a Winlink account, would be to add your Winlink password and a couple frequently used aliases to the Pat Winlink client, via the **"Action > Configure"** utility in Pat. Once set, use **"arcOS Tools > Save Pat Winlink Config"** to save the settings to a QRV Profile named **"DEFAULT"**.

Now, after a reboot, your arcOS session will remember the Wi-Fi network, and (if you've selected your **"DEFAULT"** QRV Profile at "Station Setup" time) the Pat Winlink client will remember your password and aliases.

QRV Profiles are deployed *per application* in the following order of precedence: "SPECIAL", "DEFAULT", "NONE"

**Example:**

**IF** you have "default" settings for FLDigi, Pat, JS8Call, WSJT-X saved to a QRV Profile named "`DEFAULT`"...

**AND** you have some "special" Field Day settings for only for Pat and WSJT-X saved to a QRV Profile named "`FD26`"...

**THEN** when you select "`FD26`" at Station Setup, arcOS will deploy the "`FD26`" configs for those applications that have them, and "`DEFAULT`" configs for those that don't...

**OTHERWISE** applications with no "special" or "default" QRV Profile will have the base arcOS config deployed

> **Developer Note:**
>
> When naming QRV Profiles, avoid spaces and special characters (hyphens and underscores work well).

[Back to top](#top)
