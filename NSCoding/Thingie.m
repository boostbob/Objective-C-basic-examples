//
//  Thingie.m
//  NSCoding
//
//  Created by Wang Bob on 12-7-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "Thingie.h"

@implementation Thingie

@synthesize name;
@synthesize magicNumber;
@synthesize shoeSize;
@synthesize subThingies;

- (id)initWithName:(NSString *)n magicNumber:(int)mn shoeSize:(float)ss
{
    if (self = [super init]) 
    {
        self.name = n;
        self.magicNumber = mn;
        self.shoeSize = ss;
        self.subThingies = [NSMutableArray array];
    }
    
    return self;
}

- (void) dealloc
{
    [name release];
    [subThingies release];
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    // 实现序列化
    [aCoder encodeObject:name forKey:@"name"];
    [aCoder encodeInt: magicNumber forKey:@"magicNumber"];
    [aCoder encodeFloat:shoeSize forKey:@"shoeSize"];
    [aCoder encodeObject:subThingies forKey:@"subThingies"];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    // 实现反序列化
    if(self = [super init])
    {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.magicNumber = [aDecoder decodeIntForKey:@"magicNumber"];
        self.shoeSize = [aDecoder decodeFloatForKey:@"shoeSize"];
        self.subThingies = [aDecoder decodeObjectForKey:@"subThingies"];
    }
    
    return self;
}

- (NSString *) description
{
    NSString *description = [NSString stringWithFormat:@"%@: %d/%.1f %@", name, magicNumber, shoeSize, subThingies];
    return description;
}

@end
