<h1 id="top" style="text-align: center;">arcOS Field Manual - <em>Denali</em></h1>
<p style="text-align: right;"><small><strong><em>Revised: 2026-04-08T2154UTC</em></strong></small></p>

---

## Table of Contents
- **[0.0 - Introduction (*MUST READ!*)](#section0-0)**
  - **[0.1 - What is arcOS?](#section0-1)**
  - **[0.2 - Is arcOS the right tool for me?](#section0-2)**
- **[1.0 - Getting Started (*MUST READ!*)](#section1-0)**
  - **[1.1 - Hardware Requirements/Recommendations](#section1-1)**
  - **[1.2 - First Boot Experience](#section1-2)**
  - **[1.3 - Persistent Storage and Configurations](#section1-3)**
  - **[1.4 - QRV Modules](#section1-4)**
  - **[1.6 - Backup and Restore](#section1-5)**
  - **[1.6 - Seeking Support](#section1-6)**
- **[2.0 - Included Software](#section2-0)**
  - **[2.1 - Amateur Radio Software](#section2-1)**
  - **[2.2 - Other Software](#section2-2)**
- **[3.0 - Customization](#section3-0)**
  - **[3.1 - Appearance](#section3-1)**
  - **[3.2 - Auto-config](#section3-2)**
  - **[3.3 - Persistent Software](#section3-3)**
  - **[3.3 - User Modules](#section3-4)**

## <span id="section0-0">0.0 - Introduction (*MUST READ!*)</span>
### <span id="section0-1">0.1 - What is arcOS?</span>
**The *Amateur Radio Community Operating System (arcOS)* is a bootable live Linux distribution installed on a USB drive, and it is built to "just work" with the affordable Digirig device. arcOS is founded on the belief that digital communications within communities of operators can be accessible and easy to use for ALL, regardless of license class or experience.**

arcOS is intentionally built as a platform, not a constantly shifting experiment. It delivers a "known-good" baseline of tools and workflows so time can be spent operating, learning, building, and teaching...not troubleshooting surprise system changes and breakages.

[Back to top](#top)

### <span id="section0-2">0.2 - Is arcOS the right tool for me?</span>
**arcOS is designed to make operating and training easier, especially when there are multiple people involved. Individuals benefit for the same reasons as groups.**

**arcOS might be a good fit if you:**

- Value reliability over novelty
- Want portability across multiple machines and/or operators
- Want a platform that works in field, shack, or classroom settings
- Are comfortable waiting for deliberate, well-tested releases
- Appreciate the ability to experiment safely before commiting changes to persistence

You can think of arcOS as a solid foundation. By leveraging the persistent storage features available, users and groups can layer their own data, configurations, and workflows on top...all without destabilizing the underlying system.

**arcOS might *NOT* be a good fit if you:**

- Expect frequent updates or rapid feature turnover
- Prefer bleeding-edge systems and the newest software
- Want to customize system-level components immediately
- Have no desire to try using it "as intended" before suggesting changes
- Think that "it no worky" is a valid and supportable bug report ;-)

**arcOS is built to be stable, teachable, and repeatable. If your goal is constant tinkering or living on the edge, other solutions are likely to serve you better.**

If arcOS sounds like a good fit for you or your group, welcome! Read on to get the most out of it.

[Back to top](#top)

---
## <span id="section1-0">1.0 - Getting Started</span> (***MUST READ!***)
**Before you get started, ask yourself:**

- Why am I interested in arcOS?
- What do I hope arcOS helps me accomplish?
- How do I think arcOS can help me?

**As you think about your answers, consider these core arcOS principles:**

- arcOS provides a working baseline of fundamental digital communications software.
- arcOS facilitates rapid team based learning, experimentation, and troubleshooting.
- arcOS ***does not*** provide the knowledge needed to use the software or perform modifications.

### <span id="section1-1">1.1 - Hardware Requirements/Recommendations</span>

- **Laptop/Desktop Computer (x86_64 with min. 8GB RAM)**
- **USB Drive (min. 16GB, USB 3.0 *strongly* recommended)**
- **Digirig Mobile + Cable (Lite and DR891 *NOT* supported)**
- **Transceiver (must be Digirig compatible)**
- **GPS Receiver (*strongly* recommended)**

**Machines pulled from corporate environments are often great and affordable candidates for arcOS!**

> **Developer Note:**
>
> 8GB RAM is sufficient for "normal" usage. Advanced users may require more RAM in order to take advantage of some features. Likewise, a 16GB USB drive may not provide the amount of persistent storage desired. For the purposes of basic use with arcOS, the "CAT Config" of the Digirig does not matter (Logic level, RS232, CI-V, TX500). If you intend to configure CAT control via the Digirig interface, you may need to research which model is appropriate for use with your radio.
>
> Some popular transceivers are equipped with an internal soundcard. However, arcOS standardizes on the use of a Digirig Mobile device as the computer-to-radio interface to offer "just works" functionality. Many of the transceivers with internal soundcards are also supported by one or more Digirig cables. Please conduct your own research to find an appropriate cable for your transceiver.
>
> The Digirig Lite and DR891 are not supported due to the use of CM108 PTT (which is not supported by all included applications) and their specific transceiver requirement, respectively.
>
> While a GPS receiver is not strictly required, it is extremely useful in "off-grid" situations for maintaining an accurate system clock. Some applications may also use the provided GPS location if it is available.

[Back to top](#top)

### <span id="section1-2">1.2 - First Boot Experience</span>
**The first time arcOS is booted, any free space on the USB device is configured as an exFAT filesystem (`/arcHIVE`) to be used as persistent storage. Any files not saved in this partition will be lost when the system is powered off/rebooted.**

Once booted, you'll see a **"Select Operator"** screen. On the first boot, it will be blank, and you should select **"Add new..."**. This will lead to the **"Station Setup"** screen. Here, you should enter your callsign and your Maidenhead grid square (min. 4 characters: `EM65`). If you have a GPS receiver attached to the system, and it has a valid location fix, the calculated gridsquare may be pre-populated.

Additionally, **"Station Setup"** presents you with a choice of **"QRV Profile"** (a set of user-saved configurations for one or more applications). On the first boot, **"QRV Profile"** defaults to `NONE`, since you've not created any profiles yet. 

If you wish to use the VARA modems, select **"ENABLED"** in the **"VARA"** field. 

Click **"OK"**, and arcOS will configure the session using the callsign and gridsquare provided. The **`CORE`** modules will be deployed for the first time, and this stage may take a few minutes. On subsequent boots, the **`CORE`** modules deployment will likely be much faster. This slowness is due to the first deployment requiring the creation of some filesystems on the USB device.

If you enabled VARA, the installers will run during the first deployment. You should click through the installers, leaving all inputs as their default value. The VARA installers will not need to run on subsequent boots.

Once arcOS is ready for use, you'll see a pop-up notification that says **"N0CALL is QRV!"**

[Back to top](#top)

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

### <span id="section1-4">1.4 - QRV Modules</span>
QRV Modules are a part of what makes arcOS flexible. While the ISO image is static and immutable, the QRV Modules are distributed via [GitHub repository](https://github.com/kg4vdk/arcos-linux-modules), and are able to be updated in between ISO releases if needed. In its most basic form, a QRV Module is just a script bundled with any other files needed to accomplish a task. arcOS ships with several `CORE` modules and a few `COMMUNITY` modules.

The QRV Modules are located at `/arcHIVE/QRV/N0CALL/arcos-linux-modules`.

`CORE` modules provide basic functionality for the included Amateur Radio software. They should not be modified by users, and any user-made changes will be	overwritten when the modules are updated.

`COMMUNITY` modules are built and maintained by community members, and can 	provide useful functionality beyond what is included in arcOS. Changes to the `COMMUNITY` modules will also be overwritten when the QRV Modules are updated. 

Users/groups are encouraged to create their own `USER` modules/scripts to extend or modify functionality. A private or public repository on GitHub can be a great way for groups to share modules. In reality, all `COMMUNITY` modules are `USER` modules...just written in a way that works for any other user. Take a look at some of the `COMMUNITY` and `CORE` modules if you're looking for ideas to get your own module started.

`USER` modules ***ARE NOT*** overwritten by module updates.

When an update for the QRV Modules is available, users will be notified by the appearance of a "refresh" icon (🗘) in the system information displayed at the bottom right of the desktop window. A pop-up notification will also be shown containing a link to learn more about the update.

To update the QRV Modules, use “Menu > arcOS Tools > Update QRV Modules.”

[Back to top](#top)

### <span id="section1-5">1.5 - Backup and Restore</span>

***The backup and restore functions are designed to be used as a recovery tool, not as a migration tool between releases.***

To backup the currently configured operator, use the “Menu > arcOS Tools > Backup Operator” utility. This will create a backup of the current operator’s files. The utility will prompt for a location to save the backup. It is recommended to save the backup onto a storage device other than the arcOS persistent storage.

**Files included:**

- `/arcHIVE/.station-info`
- `/arcHIVE/.operators/N0CALL_station-info`
- `/arcHIVE/QRV/N0CALL/*`   **<-- If you want it in your backup, keep it in your callsign directory!** 
- `/arcHIVE/QRV/LOGS`
- `/arcHIVE/QRV/.packages`

***Offline maps are NOT included! Back them up separately.***

To restore an operator from a backup file, reboot the system, and at the “Select Operator” screen, select “Restore from backup”. A drag-and-drop window will be presented. Open the /arcHIVE drive on the Desktop to access the file browser. Locate the backup file, and drag it into the 	window. When the restoration is complete, the Station Setup will be presented, configured for the restored operator.

When restoring a backup containing modules from an older release into a newer release, you may be notified that the backup incompatible. In this scenario, you will be prompted:

**The QRV Modules (`arcos-linux-modules`) in the backup are a different version than the modules contained in the ISO!**

- If the release codenames match (e.g. `denali`), and the Backup Modules *ARE NEWER* than the ISO Modules: Choose **'Restore Anyway'**
  - Ignores the incompatibility, and restores the whole backup
  - Encountered in cases where `arcos-linux-modules` received an update, you've taken a backup, and are now restoring the backup to a system that did not ship with the updated `arcos-linux-modules`

- If the release codenames match (e.g. `denali`), and the Backup Modules *ARE OLDER* than the ISO Modules: Choose **'Keep Backup Configs Only'**
  - Discards the `arcos-linux-modules` from the backup, and deploys the version shipped in the ISO
  - Restores `CALLSIGN/SAVED` from the backup
  - Common when restoring from a backup made before a 'dash' ISO release (e.g. arcOS-22.2.0-1)

- To restore only files *OTHER THAN* the Backup Modules and Configs: Choose **'Discard Backup Modules + Configs'**
  - Discards the `arcos-linux-modules` from the backup, and deploys the version shipped in the ISO
  - Discards `CALLSIGN/SAVED` from the backup
  - Restores remaining files from the backup

[Back to top](#top)

### <span id="section1-6">1.6 - Seeking Support</span>
**Please DO NOT use Winlink for support requests!**

**Support is available primarily via GitHub. [Discussions](https://github.com/kg4vdk/arcos-linux-modules/discussions) can be started and [issues](https://github.com/kg4vdk/arcos-linux-modules/issues) raised when necessary.**

Support and community interaction is also available via IRC. arcOS includes Hexchat (“Menu > Internet > Hexchat") as an IRC client. Hexchat is configured to automatically connect to the #arcOS-Linux channel on the Libera.Chat network, and uses the operator callsign as the “nickname” for the user. Come say hi!

When seeking support consider whether your question/issue is specific to arcOS. Generic questions about "Linux" or "ApplicationXYZ" should be directed to a more appropriate support forum. You are expected to provide details about what you have already tried/investigated, as well as any context necessary for readers to comprehend your issue or idea. Be sure to provide the radio and Digirig version you are using, along with a clear and concise description of the problem you've encountered. The following can serve as a template:

> **Steps to reproduce the behavior:**
>
>  1. Go to '...' 
>  2. Click on '....' 
>  3. Scroll down to '....' 
>  4. See behavior '...' 
>
> **Expected behavior:** Description of what you expected to happen.
>
> **What actually happened:** Include any errors, verbatim.
>
> **Screenshots:** If applicable, add screenshots to help explain your problem.
>
> **Additional context:** Add any other context about the problem.

You may be asked to provide a "**QRV REPORT**". Here's how to generate the QRV report:

  - Open a terminal.
  - Run the `qrv` command.
  - Copy/paste or attach the report to your support request.

You may be asked to provide a "**FULL SYSTEM REPORT**". Here's how to generate the system report:

  - Select “Menu > System Info”, and select “Upload system information”.
    - A browser window will open with the text of your system report.
    - Please, DO NOT copy/paste the full text of the system report.
    - Instead, copy the link from the browser address bar, and include only the link to the system report.

> **Recommended Reading:**
>
> [How To Ask Questions The Smart Way](http://www.catb.org/~esr/faqs/smart-questions.html) by Eric S. Raymond

[Back to top](#top)

---
## <span id="section2-0">2.0 - Included Software</span>
### <span id="section2-1">2.1 - Amateur Radio Software</span>
- ARDOP 1.0.4.1.3 (Soundcard Modem)
- Direwolf 1.7 (Packet Modem)
- FL-Suite (Multi-mode Soundcard Modem and Additional Tools)
  - FLDigi 4.1.20, FLMsg 4.0.23, FLAmp 2.2.09, FLRig 2.0.04, FLArq 4.3.8
- Gpredict 2.3-115-g0f3beb6-3build3 (Satellite Tracking)
- Hamlib 4.5.5 (Rig Control)
- JS8Call 2.2.0 (JS8 Client)
- Paracon 1.2.0 (Packet Client)
- Pat 0.19.2 (Winlink Client)
- QSSTV 9.5.8 (Slow Scan Television Client)
- WSJT-X 2.7.0 (FT8 Client)
- VARA FM 4.3.9 (Soundcard Modems for Windows)
- VARA HF 4.8.9 (Soundcard Modems for Windows)
- YAAC 1.0-beta216 (APRS Client)

> **Developer Note:**
>
> While arcOS does include FLRig and rigctl[d], and users may save customized settings in applications to take advantage of this, **NO DEVELOPER SUPPORT FOR CAT/RIG CONTROL WILL BE PROVIDED**.
>
> **This is for the following reasons:**
>
> 1. CAT control isolates the operator from their own equipment, often exposing a lack of proficiency when it is not available.
> 2. CAT control introduces extra complexity with regard to troubleshooting, with which many inexperienced users aren't prepared to engage.
> 3. Attempting to maintain support for users of every past, present, and future transceiver is not feasible.

### <span id="section2-2">2.2 - Other Software</span>
- Audacity (Audio Editor)
- GIMP (Image Editor)
- Hexchat (IRC Client)
- Kleopatra (Certificate Manager and Unified Cryptography GUI)
- Localsend (Cross-platform File Sharing)
- RTL-SDR (Software defined radio receiver for Realtek RTL2832U)
- Shotcut (Video Editor)
- SkyAware (ADS-B Visualizer)
- Veracrypt (Disk encryption with strong security based on TrueCrypt)
- Viking (Mapping and GPS data editor, analyzer and viewer)
- VLC (Multimedia player and streamer)
- VSCodium (Code Editor)

[Back to top](#top)

---
## <span id="section3-0">3.0 - Customization</span>
### <span id="section3-1">3.1 - Appearance</span>
Users/groups can customize the static desktop background image in two ways. Place the desired `jpg` image(s) in the following location(s):
  - User-specific: `/arcHIVE/QRV/N0CALL/.wallpaper.jpg` (set *after* Station Setup)
  - System-level: `/arcHIVE/.wallpaper.jpg` (set *after* Station Setup)

  Users can also set the desktop background to a slideshow of images. Place the desired slideshow images in a directory named `/arcHIVE/QRV/N0CALL/.slideshow`.

### <span id="section3-2">3.2 - Persistent Software</span>
For software not included in arcOS, but available as a deb file, users can utilize the `download-packages` command in a terminal to cache the packages in persistent storage for installation at boot time, before Station Setup runs. Prior to using this tool, users should test installing the packages manually using `apt`. Once any dependency issues are resolved, pass the package list to the command as follows:

```
N0CALL:~ $ download-packages package_1 [package_2 package_3]
```

Each time the command is used, the downloaded packages are stored in `/arcHIVE/QRV/.packages/packages-xyz123`. This allows for users to remove some
packages without disturbing other groups of packages. Users are encouraged to give the `packages-xyz123` directory a more memorable name.

If a piece of software is not available from a repository, and the deb file must be manually downloaded, users can manually create a directory for the deb file in `/arcHIVE/QRV/.packages`.

### <span id="section3-3">3.3 - User Modules</span>

### <span id="section3-4">3.4 - Auto-config</span>

[Back to top](#top)

---
## <span id="section4-0">4.0 - Security</span>
### <span id="section4-1">4.1 - Passwords</span>

### <span id="section4-2">4.2 - Encryption</span>

[Back to top](#top)

---
