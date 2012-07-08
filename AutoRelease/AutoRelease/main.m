//
//  main.m
//  AutoRelease
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RetainTracker.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool 
    {
        RetainTracker *tracker = [RetainTracker new];
        // count = 1
        
        [tracker retain];
        [tracker retain];
        
        NSLog(@"%@", [tracker description]);
    }
    
    return 0;
}

