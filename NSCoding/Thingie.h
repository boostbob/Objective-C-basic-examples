//
//  Thingie.h
//  NSCoding
//
//  Created by Wang Bob on 12-7-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

@interface Thingie : NSObject<NSCoding>
{
    NSString *name;
    int magicNumber;
    float shoeSize;
    NSMutableArray *subThingies;
}

@property (copy) NSString *name;
@property int magicNumber;
@property float shoeSize;
@property (retain) NSMutableArray *subThingies;

-(id)initWithName: (NSString *)name  
            magicNumber: (int)mn
            shoeSize: (float)ss;;
@end
