//
//  SimpleNotepadAppDelegate.h
//  SimpleNotepad
//
//  Created by Wang Bob on 12-7-24.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SimpleNotepadAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *_window;
}

@property (strong) IBOutlet NSWindow *window;

@end
