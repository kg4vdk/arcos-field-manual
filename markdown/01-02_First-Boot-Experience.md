### <span id="section1-2">1.2 - First Boot Experience</span>
**The first time arcOS is booted, any free space on the USB device is configured as an exFAT filesystem (`/arcHIVE`) to be used as persistent storage. Any files not saved in this partition will be lost when the system is powered off/rebooted.**

Once booted, you'll see a **"Select Operator"** screen. On the first boot, it will be blank, and you should select **"Add new..."**.

This will lead to the **"Station Setup"** screen. Enter your callsign and your Maidenhead grid square (min. 4 characters: e.g. `EM65`). If you have a GPS receiver attached to the system, and it has a valid location fix, the calculated gridsquare may already be pre-populated.

Additionally, **"Station Setup"** presents you with a choice of **"QRV Profile"** (a set of user-saved configurations for one or more applications). On the first boot, **"QRV Profile"** defaults to `NONE`, since you've not created any profiles yet. 

If you wish to use the VARA modems, select **"ENABLED"** in the **"VARA"** field. 

Click **"OK"**, and arcOS will configure the session using the callsign and gridsquare provided. The **`CORE`** modules will be deployed for the first time, and this stage may take a few minutes. On subsequent boots, the **`CORE`** modules deployment will likely be much faster. This slowness is due to the first deployment requiring the creation of some filesystems on the USB device.

If you enabled VARA, the installers will run during the first deployment. You should click through the installers, leaving all inputs as their default value. The VARA installers will not need to run on subsequent boots.

Once arcOS is ready for use, you'll see a pop-up notification that says **"N0CALL is QRV!"**

In the lower right of the desktop you'll find the **Station Information** display provided by `conky`. This display contains the following information:

- Current operator callsign
- Gridsquare and coordinates if valid GPS fix available, otherwise gridsquare entered at **Station Setup**
  - Clock icon (⏲) displayed if GPS is being used as the system time source
- arcOS ISO and QRV Modules version
- Deployed QRV Profile
- Boot device and system uptime
- CPU and RAM usage
- Live OS (portion of RAM) and `arcHIVE` (persistent storage) usage
- IP address if connected to a network
  - Screen icon (🖵) if Desktop Sharing is enabled

[Back to top](#top)
