//
//  main.m
//  NSString
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool 
    {
        // 初始化方法
        NSString *str = [NSString stringWithFormat: @"this is a %@", @"dog"];
        NSLog(@"%@", str);
        NSLog(@"str length = %ld", [str length]);
        
        // 判断内容是否相等
        NSString *thing1 = @"hello 5";
        NSString *thing2 = [NSString stringWithFormat:@"hello %d", 5];
        if([thing1 isEqualToString:thing2])
            NSLog(@"thing1 equal to thing2");
        
        if(NSOrderedSame == [thing1 compare:thing2])
            NSLog(@"thing1 equal to thing2");
        
        // 比较函数
        if(NSOrderedAscending == [@"99" compare:@"100"
                                        options:NSCaseInsensitiveSearch | NSNumericSearch])
            NSLog(@"99 < 100");
        
        // 前缀
        NSString *filename = @"draft-chapter.pages";
        if([filename hasPrefix:@"draft"])
            NSLog(@"this is a draft");
        
        // 后缀
        if([filename hasSuffix:@".pages"])
            NSLog(@"it's document");
        
        // 查找字符串
        NSRange range = [filename rangeOfString:@"chapter"];
        NSLog(@"chapter is at %@", NSStringFromRange(range));
        
        // 可变字符串
        NSMutableString *mstr = [NSMutableString stringWithCapacity:60];
        [mstr appendString:@"this is "];
        [mstr appendFormat:@"a %@", @"dog"];
        NSLog(@"%@", mstr);
        
        // 删除字符串
        NSMutableString *friends = [NSMutableString stringWithCapacity:60];
        [friends appendString:@"James BethLynn Jack Evan"];
        range = [friends rangeOfString:@"Jack"];
        // 吃掉空格字符
        range.length++;
        [friends deleteCharactersInRange:range];
        NSLog(@"friends are %@", friends);
    }
    
    return 0;
}

