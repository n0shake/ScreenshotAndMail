//
//  AppDelegate.m
//  ScreenshotAndMail
//
//  Created by Abhishek on 16/11/14.
//  Copyright (c) 2014 AbhishekBanthia. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

/*Takes the current screenshot and attaches it to a new Mail draft window */
-(IBAction)buttonAction:(id)sender
{
    NSImage *screenCapture = [self windowImage];
    NSData *imageData = [screenCapture TIFFRepresentation];
    NSString *docsDir;
    NSArray *dirPaths;
    
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = [dirPaths objectAtIndex:0];
    NSString *filePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent:@"attachment.png"]];
    [imageData writeToFile:filePath atomically:YES];
    [[NSWorkspace sharedWorkspace] openFile:filePath withApplication:@"Mail"];

}

/*Returns the screenshot*/
- (NSImage *)windowImage
{
    NSImage * image = [[NSImage alloc] initWithCGImage:[self windowImageShot] size:[[self window ]frame].size];
    return image;
}

/*Returns a CGImageRef version of the window*/
- (CGImageRef)windowImageShot
{
    CGWindowID windowID = (CGWindowID)[[self window  ]windowNumber];
    CGWindowImageOption imageOptions = kCGWindowImageDefault;
    CGWindowListOption singleWindowListOptions = kCGWindowListOptionIncludingWindow;
    CGRect imageBounds = CGRectNull;
    CGImageRef windowImage = CGWindowListCreateImage(imageBounds, singleWindowListOptions, windowID, imageOptions);
    return (CGImageRef)windowImage;
}

@end
