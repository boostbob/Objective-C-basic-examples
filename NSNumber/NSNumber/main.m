//
//  main.m
//  NSNumber
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool 
    {
        NSNumber *numberInt, *numberFloat;
        NSMutableArray *marray;
        
        numberInt = [NSNumber numberWithInt:10];
        numberFloat = [NSNumber numberWithFloat:0.8];
        
        [marray addObject:numberInt];
        [marray addObject:numberFloat];
        
        NSLog(@"numberInt is %d", numberInt.intValue);
        NSLog(@"numberFloat is %f", numberFloat.floatValue);
    }
    
    return 0;
}

