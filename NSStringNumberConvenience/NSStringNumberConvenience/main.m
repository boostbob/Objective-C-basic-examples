//
//  main.m
//  NSStringNumberConvenience
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSStringExt.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool 
    {
        NSMutableDictionary *dict;
        dict = [NSMutableDictionary dictionary];
        
        [dict setObject:[@"hello" mylengthAsNumber] forKey:@"hello"];
        [dict setObject:[@"ilikefish" mylengthAsNumber] forKey:@"ilikefish"];
        
        NSLog(@"%@", dict);
    }
    
    return 0;
}

