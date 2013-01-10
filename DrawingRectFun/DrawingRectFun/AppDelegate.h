//
//  AppDelegate.h
//  DrawingRectFun
//
//  Created by debugger on 12-8-1.
//  Copyright (c) 2012年 debugger. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MyView.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet MyView *myView;

@end
