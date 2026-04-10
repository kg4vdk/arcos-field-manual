## <span id="section4-0">4.0 - Security</span>
### <span id="section4-1">4.1 - Passwords</span>
By default, there is no user password set in arcOS. Users can set an individual password using the `set-password` command. This will set the password used when unlocking the screen as well as for some graphical administrative utilities. The saved password is stored in hashed form at `/arcHIVE/QRV/N0CALL/.passwd`.

Additionally, `gnome-keyring` provides a login keyring. By default this keyring is unencrypted. Users may choose to encrypt the keyring with a password by opening the "Menu > Accessories > Passwords & Keys" utility. Then, right-click on the "Login" folder under the "Passwords" section and select "Change Password." If this password is set, you will be prompted for the keyring password at the next startup after Station Setup has completed.

### <span id="section4-2">4.2 - Encryption</span>
Users may want to prevent unauthorized access to any personal files (`/arcHIVE`) on the arcOS boot device. In this case, a LUKS encrypted `/arcHIVE` can be manually created.

**Note:** use of LUKS encryption will interfere with use of `.autoconfig`.

[Back to top](#top)

---
