//
//  MyView.m
//  DrawingRectFun
//
//  Created by debugger on 12-8-1.
//  Copyright (c) 2012年 debugger. All rights reserved.
//

#import "MyView.h"

@implementation MyView

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
    NSColor *gray = [NSColor grayColor];
    NSColor *white = [NSColor whiteColor];
    NSColor *red = [NSColor redColor];
    
    // background
    [gray set];
    NSRectFill([self bounds]);
    
    // fill target rect
    NSRect rect1 = NSMakeRect(15, 20, 100, 100);
    [white set];
    NSRectFill(rect1);
    
    NSRect rect2 = NSMakeRect(195, 20, 100, 100);
    [red set];
    NSFrameRectWithWidth(rect2, 3);
    
    NSRect rect3 = NSMakeRect(365, 20, 100, 100);
    [[NSColor colorWithCalibratedHue: (0.3) saturation: 0.8 brightness: 0.8 alpha: 0.5] set];
    NSRectFill(rect3);
    [[NSColor colorWithCalibratedHue: (0.6) saturation: 0.5 brightness: 0.2 alpha: 1] set];
    NSFrameRectWithWidth(rect3, 3);
    
    int count = 15;
    NSRect startingRect = NSMakeRect (15, 140, 50, 50);
    // create arrays of rects and colors
    NSRect rectArray [count];
    NSColor * colorArray[count];
    rectArray[0] = startingRect;
    colorArray[0] = [NSColor redColor];
    
    // populate arrays
    int i;
    NSRect oneRect = rectArray[0];
    
    for ( i = 1; i < count; i++ ) {
        // move 100 pixels to the right
        oneRect.origin.x += 100;
        // if the right edge doesn't fit, move down 100 pixels
        if ( NSMaxX (oneRect) > NSMaxX ([self bounds]) ) {
            oneRect.origin.x = startingRect.origin.x;
            oneRect.origin.y += 100;
        }
        rectArray [i] = oneRect;
        // increment color
        colorArray[i] = [NSColor colorWithCalibratedHue: (i*0.04) saturation: 1 brightness: 0.9 alpha: 1];
    }
    
    // use rect and color arrays to fill
    NSRectFillListWithColors ( rectArray, colorArray, count );
    
    // draw a 2 pixel border around each rect
    [[NSColor whiteColor] set]; for ( i = 0; i < count; i++) {
        NSFrameRectWithWidth ( rectArray[i], 2 );
    }
}

-(BOOL)isFlipped
{
    return TRUE;
}

@end
