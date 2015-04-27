# Screenshot And Mail for Cocoa applications

### Steps:

- Using windowID, we capture the screen
- Captured screen will be in CGRef format. We convert it to NSImage
- NSImage to NSData using TIFFPresentation
- We save the file locally
- And finally, we open the file with the Mail application

![](/https://cloud.githubusercontent.com/assets/8280282/7342039/e437c954-ecca-11e4-9c28-cc2c97888e15.png)


*REMEMBER TO DELETE THE SAVED IMAGE AFTER A TIME DURATION*
