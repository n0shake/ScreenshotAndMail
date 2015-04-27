# Screenshot And Mail for Cocoa applications

### Steps:

- Using windowID, we capture the screen
- Captured screen will be in CGRef format. We convert it to NSImage
- NSImage to NSData using TIFFPresentation
- We save the file locally
- And finally, we open the file with the Mail application




*REMEMBER TO DELETE THE SAVED IMAGE AFTER A TIME DURATION*
