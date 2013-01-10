//
//  MyScreenSaverView.m
//  MyScreenSaver
//
//  Created by debugger on 12-8-2.
//  Copyright (c) 2012年 debugger. All rights reserved.
//

#import "MyScreenSaverView.h"

static NSString * const MyModuleName = @"com.boostbob.MyScreenSaver";

@implementation MyScreenSaverView

- (id)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    
    if (self)
    {
        // ScreenSaverDefaults Cool
        ScreenSaverDefaults *defaults;
        defaults = [ScreenSaverDefaults defaultsForModuleWithName:MyModuleName];

        // register our default values
        [defaults registerDefaults:[NSDictionary dictionaryWithObjectsAndKeys:
                                    @"NO", @"DrawFilledShapes",
                                    @"NO", @"DrawOutlinedShapes",
                                    @"YES", @"DrawBoth", // 默认是两种图案都可以
                                    nil]];
        
        [self setAnimationTimeInterval:1/30.0];
    }
    
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    ScreenSaverDefaults *defaults;
    defaults = [ScreenSaverDefaults defaultsForModuleWithName:MyModuleName];
    
    NSBezierPath *path;
    NSRect rect;
    NSSize size;
    NSColor *color;
    
    float red, green, blue, alpha;
    int shapeType;
    
    size = [self bounds].size;
    
    //calulate random with and height
    // SSRandomFloatBetween由random构造，是一个内敛函数
    // 都是CG库
    rect.size = NSMakeSize(SSRandomFloatBetween(size.width / 100.0, size.width / 10.0), SSRandomFloatBetween(size.height / 100.0, size.height / 10.0));
    
    // calulate random origin point
    rect.origin = SSRandomPointForSizeWithinRect(rect.size, [self bounds]);
    
    shapeType = SSRandomIntBetween(0, 2);
    
    // decide what kind of shape to draw
    switch (shapeType)
    {
        case 0: // rect
            path = [NSBezierPath bezierPathWithRect:rect];
            break;
        case 1:
            path = [NSBezierPath bezierPathWithOvalInRect:rect];
            break;
        case 2: // arc
        default:
            {
                float startAngle, endAngle, radius;
                NSPoint point;
                
                startAngle = SSRandomIntBetween(0.0, 360.0);
                endAngle = SSRandomIntBetween(startAngle, 360.0 + startAngle);
                
                // user the smallest value for the radius (eigher or height)
                radius = rect.size.width <= rect.size.height ? rect.size.width / 2 : rect.size.height / 2;
                
                // calculate our center point
                point = NSMakePoint(rect.origin.x + rect.size.width / 2, rect.origin.y + rect.size.height / 2);
                
                // construct the path
                path = [NSBezierPath bezierPath];
                [path appendBezierPathWithArcWithCenter:point radius:radius startAngle:startAngle endAngle:endAngle clockwise:SSRandomIntBetween(0, 1)];
            }
            break;
    }
    
    red     = SSRandomFloatBetween(0.0, 255.0) / 255.0;
    green   = SSRandomFloatBetween(0.0, 255.0) / 255.0;
    blue    = SSRandomFloatBetween(0.0, 255.0) / 255.0;
    alpha   = SSRandomFloatBetween(0.0, 255.0) / 255.0;
    color   = [NSColor colorWithCalibratedRed:red green:green blue:blue alpha:alpha];

    [color set];
    
    /*
     if(SSRandomIntBetween(0, 1) == 0)
        [path fill];
    else
        [path stroke];
     */
    
    if ([defaults boolForKey:@"DrawBoth"]) {
        if (SSRandomIntBetween( 0, 1 ) == 0)
            [path fill];
        else
            [path stroke];
    } else if ([defaults boolForKey:@"DrawFilledShapes"]) {
        [path fill];
    } else {
        [path stroke];
    }
}

- (BOOL)hasConfigureSheet
{
    return YES;
}

- (NSWindow*)configureSheet
{
    ScreenSaverDefaults *defaults;
    defaults = [ScreenSaverDefaults defaultsForModuleWithName:MyModuleName];
    
    if(!configSheet)
    {
        if(![NSBundle loadNibNamed:@"ConfigureSheet" owner:self])
        {
            NSLog(@"Failed to load configure sheet.");
            NSBeep();
        }
    }
    
    [drawFilledShapesOption setState:[defaults boolForKey:@"DrawFilledShapes"]];
    [drawOutlinedShapesOption setState:[defaults boolForKey:@"DrawOutlinedShapes"]];
    [drawBothOption setState:[defaults boolForKey:@"DrawBoth"]];
    
    return configSheet;
}

-(IBAction)cancelClick:(id)sender
{
    [[NSApplication sharedApplication] endSheet:configSheet];
}

-(IBAction)okClick:(id)sender
{
    ScreenSaverDefaults *defaults;
    defaults = [ScreenSaverDefaults defaultsForModuleWithName:MyModuleName];
    
    // update our defaults
    [defaults setBool:[drawFilledShapesOption state] forKey:@"DrawFilledShapes"];
    [defaults setBool:[drawOutlinedShapesOption state] forKey:@"DrawOutlinedShapes"];
    [defaults setBool:[drawBothOption state] forKey:@"DrawBoth"];
    
    // save the settings disk
    [defaults synchronize];
    
    // close the sheet
    [[NSApplication sharedApplication] endSheet:configSheet];
}

@end
