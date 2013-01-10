//
//  main.m
//  NSCoding
//
//  Created by Wang Bob on 12-7-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Thingie.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool 
    {
        Thingie *thing1 = [[Thingie alloc] initWithName:@"thing1" magicNumber:42 shoeSize:10.5];
        NSLog(@"%@", thing1);
        /*
         thing1: 42/10.5 (
         )
         */
        
        NSData *freezeDried;
        freezeDried = [NSKeyedArchiver archivedDataWithRootObject:thing1];
        [thing1 release];
        
        thing1 = [NSKeyedUnarchiver unarchiveObjectWithData:freezeDried];
        NSLog(@"reconstituted thing: %@", thing1);
        /*
         reconstituted thing: thing1: 42/10.5 (
         )
         */
        
        Thingie *anotherThing;
        
        anotherThing = [[[Thingie alloc] initWithName:@"thing2" magicNumber:23 shoeSize:13.0] autorelease];
        [thing1.subThingies addObject:anotherThing];
        
        anotherThing = [[[Thingie alloc] initWithName:@"thing3" magicNumber:17 shoeSize:9.0] autorelease];
        [thing1.subThingies addObject:anotherThing];
        
        NSLog(@"thing with sub things :%@", thing1);

        // 编码
        freezeDried = [NSKeyedArchiver archivedDataWithRootObject:thing1];
        [thing1 release];
        
        // 解码
        thing1 = [NSKeyedUnarchiver unarchiveObjectWithData:freezeDried];
        NSLog(@"reconstituted thing: %@", thing1);
    }
    
    return 0;
}

