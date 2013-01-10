//
//  Tire.h
//  CarParts
//
//  Created by Wang Bob on 12-7-6.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Tire : NSObject
{
    float pressure;
    float treadDepth;
}

// 轮胎压力
- (void)setPressure:(float)pressure;
- (float)pressure;

// 轮胎胎纹深度
- (void)setTreadDepth:(float)treadDepth;
- (float)treadDepth;
@end
