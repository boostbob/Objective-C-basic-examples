//
//  CaseToolAppDelegate.h
//  CaseTool
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CaseToolAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *_window;
}

@property (strong) IBOutlet NSWindow *window;

@end
