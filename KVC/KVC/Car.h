//
//  Car.h
//  KVC
//
//  Created by Wang Bob on 12-7-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    NSString* name;
}
@property (copy) NSString* name;
@property float mileage;
@end
