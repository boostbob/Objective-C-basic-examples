//
//  main.m
//  NSDictionary
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool 
    {
        NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"1", @"one", @"2", @"two", nil];
        NSLog(@"two is %@", [dic objectForKey:@"two"]);
        
        for(id key in dic)
            NSLog(@"%@ is %@", key, [dic objectForKey:key]);
        
        NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithCapacity:20];
        
        // 添加
        [mdic setObject:@"1" forKey:@"one"];
        [mdic setObject:@"2" forKey:@"two"];
        [mdic setObject:@"3" forKey:@"three"];
        
        for(id key in mdic)
            NSLog(@"%@ is %@", key, [mdic objectForKey:key]);
        
        // 删除
        [mdic removeObjectForKey:@"two"];
        
        for(id key in mdic)
            NSLog(@"%@ is %@", key, [mdic objectForKey:key]);        
        
        // 修改
        [mdic setObject:@"叁" forKey:@"three"];
        
        for(id key in mdic)
            NSLog(@"%@ is %@", key, [mdic objectForKey:key]);
    }
    
    return 0;
}

