//
//  main.m
//  RetainTracker
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RetainTracker.h"

int main (int argc, const char * argv[])
{
    RetainTracker *tracker = [RetainTracker new];
    // count = 1
    
    NSLog(@"%@", tracker);
    
    [tracker retain]; // count = 2
    NSLog(@"%ld", [tracker retainCount]);

    [tracker retain]; // count = 3
    NSLog(@"%ld", [tracker retainCount]);
    
    [tracker release]; // count = 2
    NSLog(@"%ld", [tracker retainCount]);    

    [tracker release]; // count = 1
    NSLog(@"%ld", [tracker retainCount]);    

    [tracker retain]; // count = 2
    NSLog(@"%ld", [tracker retainCount]);    

    [tracker release]; // count = 1
    NSLog(@"%ld", [tracker retainCount]);    

    [tracker release]; // count = 0, dealloc it   
    
    return 0;
}

