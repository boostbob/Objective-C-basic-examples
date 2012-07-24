//
//  AppController.m
//  SimpleNotepad
//
//  Created by Wang Bob on 12-7-24.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (id)init
{
    
    if (self = [super init]) 
    {
        // 
    }
    
    return self;
}

-(IBAction)clearText:(id)sender
{
    [textView setString:@""];
}
@end
