//
//  main.m
//  NSRange
//
//  Created by Wang Bob on 12-7-7.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

void print_range(NSRange range);

void print_range(NSRange range)
{
    if(range.location != NSNotFound)
        NSLog(@"range is %@", NSStringFromRange(range)); // NSStringFromRange
    else
        NSLog(@"range.location not found.");
}

int main (int argc, const char * argv[])
{
    @autoreleasepool 
    {
        // 各种初始化方法
        NSRange range1;
        
        // 分别赋值
        range1.location = 18;
        range1.length = 20;
        print_range(range1);
        
        // 结构初始化方法
        NSRange range2 = {20, 40};
        print_range(range2);
        
        // 调用辅助的build函数
        NSRange range3 = NSMakeRange(30, 60);
        print_range(range3);
        
        // 暂时没有确定的有意义的值，可以设置成NSNotFound
        NSRange range4 = {NSNotFound, NSNotFound};
        print_range(range4);
        
        // 截取部分字符串
        NSString *str = @"that is a dog.";
        NSLog(@"it's a %@", [str substringWithRange:NSMakeRange(10, 3)]);
        
        // 返回部分字符串的位置信息
        NSRange range = [str rangeOfString:@"dog"];
        if(range.length > 0) print_range(range);
        
        // 反响查找
        range = [str rangeOfString:@"a" options:NSBackwardsSearch];
        if(range.length > 0) print_range(range);
        
        // 从字符串构建NSRange结构体
        NSLog(@"it's a %@", [str substringWithRange:NSRangeFromString(@"{10, 3}")]); // NSRangeFromString
        
        // 截取数组的部分元素
        NSArray *words = [NSArray arrayWithObjects:@"one", @"two", @"three", @"four", @"five", nil];
        NSArray *subWords = [words subarrayWithRange:NSMakeRange(2, 2)];

        for (NSString *w in subWords) 
            NSLog(@"%@", w);
        
        // 判断值是否相等
        NSRange rangeOne = NSMakeRange(1, 10);
        NSRange rangeTwo = NSMakeRange(1, 10);
        
        if(NSEqualRanges(rangeOne, rangeTwo))
            NSLog(@"rangeOne is equal to rangeTwo");
        
        // range is {3, 3}
        NSRange intersectionRange = NSIntersectionRange(NSMakeRange(1, 5), NSMakeRange(3, 8));
        print_range(intersectionRange);
        
        if(NSLocationInRange(8, NSMakeRange(5, 20)))
            NSLog(@"8 in {1, 20}");
        
        if(NSMaxRange(NSMakeRange(3, 8)) == (3 + 8))
            NSLog(@"NSMaxRange is sum of location and length");
        
        // range is {1, 14}
        print_range(NSUnionRange(NSMakeRange(1, 10), NSMakeRange(5, 10)));
        
        // range is {1, 20}
        print_range(NSUnionRange(NSMakeRange(1, 10), NSMakeRange(11, 10)));
    }
    
    return 0;
}

