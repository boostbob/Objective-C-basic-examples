//
//  Engine.m
//  CarParts
//
//  Created by Wang Bob on 12-7-6.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (id)init
{
    if (self = [super init]) 
    {
        // Initialization code here.
    }
    
    return self;
}

- (NSString *) description
{
    return (@"i am an engine. VROOOM!");
}

- (id) copyWithZone:(NSZone *)zone
{
    Engine *engineCopy;
    // self class 不是[Engine allocWithZone:zone]保证子类也可以工作
    engineCopy = [[[self class] allocWithZone:zone] init];
    return engineCopy;
}

@end
