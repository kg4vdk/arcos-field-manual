### <span id="section1-4">1.4 - QRV Modules</span>
QRV Modules are a part of what makes arcOS flexible. While the ISO image is static and immutable, the QRV Modules are distributed via [GitHub repository](https://github.com/kg4vdk/arcos-linux-modules), and are able to be updated in between ISO releases if needed. In its most basic form, a QRV Module is just a script bundled with any other files needed to accomplish a task. arcOS ships with several `CORE` modules and a few `COMMUNITY` modules.

The QRV Modules are located at `/arcHIVE/QRV/N0CALL/arcos-linux-modules`.

`CORE` modules provide basic functionality for the included Amateur Radio software. They should not be modified by users, and any user-made changes will be	overwritten when the modules are updated.

`COMMUNITY` modules are built and maintained by community members, and can 	provide useful functionality beyond what is included in arcOS. Changes to the `COMMUNITY` modules will also be overwritten when the QRV Modules are updated. In reality, all `COMMUNITY` modules are `USER` modules...just written in a way that works for any other user.

`USER` modules ***ARE NOT*** overwritten by module updates.

When an update for the QRV Modules is available, users will be notified by the appearance of a "refresh" icon (🗘) in the system information displayed at the bottom right of the desktop window. A pop-up notification will also be shown containing a link to learn more about the update.

To update the QRV Modules, use “Menu > arcOS Tools > Update QRV Modules.”

`USER` modules ***ARE NOT*** overwritten by module updates.

[Back to top](#top)
