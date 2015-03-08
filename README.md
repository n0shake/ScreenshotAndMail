# ScreenshotAndMail

Steps:

--> Using windowID, capture screen
--> captured screen will be in CGRef format
--> Convert it to NSImage
--> Convert it to NSData using TIFFPresentation
--> Save the file locally
--> Open the file with Mail app


*REMEMBER TO DELETE THE SAVED IMAGE AFTER A TIME DURATION*
