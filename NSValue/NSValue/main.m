//
//  main.m
//  NSValue
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool 
    {
        NSMutableArray *marray = [NSMutableArray arrayWithCapacity:10];
        
        NSRect rect = NSMakeRect(1, 2, 30, 40);
        NSValue *value = [NSValue valueWithRect:rect];
        
        // 装箱后就可以放入数组
        [marray addObject:value];
        
        // get方法从参数取得结果
        NSRect valueRect;
        [value getValue:&valueRect];
        
        NSPoint point = NSMakePoint(10.0, 20.0);
        // 便捷方法
        value = [NSValue valueWithPoint:point];
        // 万能方法
        value = [NSValue valueWithBytes:&point objCType:@encode(NSPoint)];
        [marray addObject:value];
        // get方法从参数取得结果
        NSPoint valuePoint;
        [value getValue:&valuePoint];
        
        for(id o in marray)
            NSLog(@"%@", o);
    }
    
    return 0;
}

