//
//  MyScreenSaverView.h
//  MyScreenSaver
//
//  Created by debugger on 12-8-2.
//  Copyright (c) 2012年 debugger. All rights reserved.
//

#import <ScreenSaver/ScreenSaver.h>

@interface MyScreenSaverView : ScreenSaverView
{
    IBOutlet id configSheet;
    IBOutlet id drawFilledShapesOption;
    IBOutlet id drawOutlinedShapesOption;
    IBOutlet id drawBothOption;
}

-(IBAction)cancelClick:(id)sender;
-(IBAction)okClick:(id)sender;
@end
