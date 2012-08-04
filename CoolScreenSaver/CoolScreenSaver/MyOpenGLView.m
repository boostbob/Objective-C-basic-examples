//
//  MyOpenGLView.m
//  CoolScreenSaver
//
//  Created by debugger on 12-8-4.
//  Copyright (c) 2012年 debugger. All rights reserved.
//

#import "MyOpenGLView.h"

@implementation ComCocoaDevCentralBob_CoolScreenSaver_MyOpenGLView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

-(BOOL)isOpaque
{
    return NO;
}

@end
