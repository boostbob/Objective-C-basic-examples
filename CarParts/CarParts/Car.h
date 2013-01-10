//
//  Car.h
//  CarParts
//
//  Created by Wang Bob on 12-7-6.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Engine;
@class Tire;

@interface Car : NSObject
{
    Tire *tires[4];
    Engine *engine;
}

- (void) setEngine: (Engine *) newEngine;
- (Engine *) engine;

- (void) setTire: (Tire *) tire
         atIndex: (int) index;
- (Tire *) tireAtIndex: (int) index;

- (void) print;
@end
