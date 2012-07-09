//
//  Garage.h
//  KVC
//
//  Created by Wang Bob on 12-7-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

@class Car;

#import <Foundation/Foundation.h>

@interface Garage : NSObject
{
    NSMutableArray *cars;
}

@property (copy) NSString* name;
@property (copy) NSMutableArray *cars;

- (void) addCar:(Car *)car;
- (void) print;
@end
