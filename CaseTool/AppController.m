//
//  AppController.m
//  CaseTool
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (id)init
{
    if (self = [super init]) 
    {
        // Initialization code here.
    }
    
    return self;
}

// init中连接对象是nil，因此初始化是在awakeFromNib函数中
- (void)awakeFromNib
{
    [textField setStringValue:@"Enter text here"];
    [resultsField setStringValue:@"results"];
}

- (IBAction)uppercase:(id)sender
{
    NSString *original;
    NSString *uppercase;
    
    original = [textField stringValue];
    uppercase = [original uppercaseString];
    [resultsField setStringValue:uppercase];
}

- (IBAction)lowercase:(id)sender
{
    NSString *original;
    NSString *lowercase;
    
    original = [textField stringValue];
    lowercase = [original lowercaseString];
    [resultsField setStringValue:lowercase];
}
@end
