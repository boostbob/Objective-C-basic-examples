//
//  main.m
//  NSRect
//
//  Created by Wang Bob on 12-7-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool 
    {
        // NSPoint point = NSMakePoint(2.5, 3.8);
        NSPoint point = {2.5, 3.8};
        NSLog(@"%@", NSStringFromPoint(point));
        
        
        // NSSize size = NSMakeSize(10, 20);
        NSSize size = {10, 20};
        NSLog(@"%@", NSStringFromSize(size));
        
        // NSRect rect = NSMakeRect(4.5, 8.8, 30, 40);
        NSRect rect = {4.5, 8.8, 30, 40};
        NSLog(@"%@", NSStringFromRect(rect));
        
        rect.origin = point;
        rect.size = size;
        NSLog(@"%@", NSStringFromRect(rect));
    }
    
    return 0;
}

