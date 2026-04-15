### <span id="section3-3">3.3 - User Modules</span>
Users/groups are encouraged to create their own `USER` modules/scripts to extend or modify functionality. A private or public [repository on GitHub](https://github.com/kg4vdk/kg4vdk-user-modules) can be a great way for groups to share modules. Take a look at some of the `COMMUNITY` and `CORE` modules if you're looking for ideas to get your own module started.

`USER` modules can be used to personalize the system appearance, customize system preferences, install software, or do just about anything a user wants to do at Station Setup runtime. If it can be done from the command line and doesn't require a system restart/logout to work, it's a good candidate to be handled by a `USER` module.

`USER` modules should be placed in `/arcHIVE/QRV/N0CALL/arcos-linux-modules/USER` and can be numerically named to allow for ordering (e.g. `42_MY-COOL-MODULE.sh`).

One of the final `CORE` modules restarts the Cinnamon desktop environment (this is why the screen flashes back momentarily during Station Setup). If your `USER` module needs to run before the Cinnamon restart, simply make sure the module script includes “_PRE_” in its filename (e.g. `00_PRE_MY-COOL-MODULE.sh`).
