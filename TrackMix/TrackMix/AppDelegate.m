//
//  AppDelegate.m
//  TrackMix
//
//  Created by debugger on 12-7-30.
//  Copyright (c) 2012年 debugger. All rights reserved.
//

#import "AppDelegate.h"
#import "Track.h"

@implementation AppDelegate
@synthesize textField;
@synthesize slider;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    Track *aTrack = [[Track alloc] init];
    // [self setTrack:aTrack];
    self.track = aTrack;
    
    // update initialize interface
    [self updateUserInterface];
}

- (IBAction)mute:(NSButton *)sender
{
    self.track.volume = 0;
    [self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender
{
    float newValue = [sender floatValue];
    self.track.volume = newValue;
    [self updateUserInterface];
}

-(void)updateUserInterface
{
    float volume = self.track.volume;
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}

@end
