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
