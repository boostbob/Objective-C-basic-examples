//
//  main.m
//  NSData
//
//  Created by Wang Bob on 12-7-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool 
    {
        const char *str = "Hi there, this is a C string!";
        // +1 为了容纳尾部零字节
        NSData *data = [NSData dataWithBytes:str length:strlen(str) + 1];
        NSLog(@"data is %@", data);
        NSLog(@"%ld byte string is '%s'", [data length], [data bytes]);
    }
    
    return 0;
}

