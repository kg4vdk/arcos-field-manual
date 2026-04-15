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
