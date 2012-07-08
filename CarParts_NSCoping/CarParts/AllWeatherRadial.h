//
//  AllWeatherRadial.h
//  CarParts
//
//  Created by Wang Bob on 12-7-6.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "Tire.h"

// 这里不需要制定NSCopying协议
// 自动遵守超类的协议
@interface AllWeatherRadial : Tire
@property float rainHanding;
@property (readwrite, nonatomic) float snowHanding;
@end
