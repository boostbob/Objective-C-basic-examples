//
//  NSStringExt.h
//  NSStringNumberConvenience
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSString (NumberConvenience)
// 使用my前缀防止命名冲突
- (NSNumber *) mylengthAsNumber;
@end
