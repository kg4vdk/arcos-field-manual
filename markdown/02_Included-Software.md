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

### <span id="section2-3">2.3 - Persistent Software</span>
For software not included in arcOS, but available as a deb file, users can utilize the `download-packages` command in a terminal to cache the packages in persistent storage for installation at boot time, before Station Setup runs. Prior to using this tool, users should test installing the packages manually using `apt`. Once any dependency issues are resolved, pass the package list to the command as follows:

```
N0CALL:~ $ download-packages package_1 [package_2 package_3]
```

Each time the command is used, the downloaded packages are stored in `/arcHIVE/QRV/.packages/packages-xyz123`. This allows for users to remove some
packages without disturbing other groups of packages. Users are encouraged to give the `packages-xyz123` directory a more memorable name.

If a piece of software is not available from a repository, and the deb file must be manually downloaded, users can manually create a directory for the deb file in `/arcHIVE/QRV/.packages`.


[Back to top](#top)

---
