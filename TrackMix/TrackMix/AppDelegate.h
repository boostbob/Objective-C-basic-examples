//
//  AppDelegate.h
//  TrackMix
//
//  Created by debugger on 12-7-30.
//  Copyright (c) 2012年 debugger. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Track;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *textField;
@property (assign) IBOutlet NSSlider *slider;

@property(strong) Track *track;


- (IBAction)mute:(NSButton *)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;

-(void)updateUserInterface;

@end
