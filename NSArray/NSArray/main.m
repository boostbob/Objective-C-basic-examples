//
//  main.m
//  NSArray
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool 
    {
        NSArray *array = [NSArray arrayWithObjects:@"one", @"two", @"three", nil];

        // 遍历索引
        for(int i = 0; i < [array count]; i++)
            NSLog(@"%@", [array objectAtIndex:i]);
        
        // 迭代
        for(NSString *str in array)
            NSLog(@"%@", str);
        
        // 切割
        NSString *strs = @"oop:bork:greeble:ponies";
        NSArray *chunks = [strs componentsSeparatedByString:@":"];
        for (NSString* str in chunks) 
            NSLog(@"%@", str);
        
        // 合成
        NSLog(@"joined: %@", [chunks componentsJoinedByString:@"@"]);
        
        // 可变数组
        NSMutableArray *marray = [NSMutableArray arrayWithObjects:@"zhangsan", @"lisi", nil];
        [marray addObject:@"wangwu"];
        [marray addObject:@"liuqi"];
        for(NSString *str in marray)
            NSLog(@"%@", str);
        
        // 枚举器
        NSEnumerator *enumerator;
        id o;
        
        // 正向枚举
        enumerator = [marray objectEnumerator];
        while (o = [enumerator nextObject]) 
            NSLog(@"%@", o);
        
        // 反向枚举
        enumerator = [marray reverseObjectEnumerator];
        while (o = [enumerator nextObject]) 
            NSLog(@"%@", o);
    }
    
    return 0;
}

