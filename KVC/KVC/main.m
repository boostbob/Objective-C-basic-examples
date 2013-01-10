//
//  main.m
//  KVC
//
//  Created by Wang Bob on 12-7-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Garage.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool 
    {
        Garage *g = [[Garage alloc] init];
        g.name = @"Bob's Garage";
        
        Car* car = [[Car alloc] init];
        car.name = @"Herbie";
        car.mileage = 58;
        [g addCar: car];
        [car release];
        
        car = [[Car alloc] init];
        car.name = @"Elvis";
        car.mileage = 80;
        [g addCar: car];
        [car release];
        
        car = [[Car alloc] init];
        car.name = @"Streaker";
        car.mileage = 120;
        [g addCar: car];
        [car release];
        
        [g print];
        
        NSNumber *count;
        count = [g valueForKeyPath:@"cars.@count"];
        NSLog(@"We have %@ cars", count);
        
        NSNumber *miles;
        miles = [g valueForKeyPath:@"cars.@sum.mileage"];
        NSLog(@"We have a grand total of %@ miles", miles);
        
        miles = [g valueForKeyPath:@"cars.@avg.mileage"];
        NSLog(@"We have a grand avgrage of %@ miles", miles);
        
        NSNumber *min, *max;
        min = [g valueForKeyPath:@"cars.@min.mileage"];
        max = [g valueForKeyPath:@"cars.@max.mileage"];        
        NSLog(@"min mileage is %@, max mileage is %@", min, max);
        
        // 谓词
        NSPredicate *predicate;
        predicate = [NSPredicate predicateWithFormat:@"name='Streaker'"];
        BOOL match = [predicate evaluateWithObject:car];
        NSLog(@"%@", match ? @"YES": @"NO");
        
        predicate = [NSPredicate predicateWithFormat:@"mileage > 100"];
        match = [predicate evaluateWithObject:car];
        NSLog(@"%@", match ? @"YES": @"NO");       
        
        for (Car *car in [g cars]) 
        {
            if([predicate evaluateWithObject:car])
                NSLog(@"%@'s mailes is greater than 100", [car name]);
        }
        
        // 范围
        predicate = [NSPredicate predicateWithFormat:@"mileage BETWEEN{80, 100}"];
        for (Car *car in [g cars]) 
        {
            if([predicate evaluateWithObject:car])
                NSLog(@"%@'s mailes is between {80, 100}", [car name]);
        }
        
        // 用NSArray来构造范围
        NSArray *betweens = [NSArray arrayWithObjects:[NSNumber numberWithInt:80], [NSNumber numberWithInt:100], nil];
        predicate = [NSPredicate predicateWithFormat:@"mileage BETWEEN %@", betweens];
        for (Car *car in [g cars]) 
        {
            if([predicate evaluateWithObject:car])
                NSLog(@"%@'s mailes is between {80, 100}", [car name]);
        }
        
        // 使用SELF
        predicate = [NSPredicate predicateWithFormat:@"SELF.name IN {'Herbie', 'Elvis'}"];
        for (Car *car in [g cars]) 
        {
            if([predicate evaluateWithObject:car])
                NSLog(@"%@ is in {Herbie, Elvis}", [car name]);
        }    
        
        NSArray *names = [[g cars] valueForKey:@"name"];
        predicate = [NSPredicate predicateWithFormat:@"SELF IN {'Herbie', 'Elvis'}"];
        NSArray *results = [names filteredArrayUsingPredicate:predicate];
        NSLog(@"%@", results);
        
        // 用数组求交集
        NSArray *names1 = [NSArray arrayWithObjects:@"Herbie", @"Elvis", nil];
        NSArray *names2 = [NSArray arrayWithObjects:@"Elvis", @"Streaker", nil];
        predicate = [NSPredicate predicateWithFormat:@"SELF IN %@", names1];
        results = [names2 filteredArrayUsingPredicate:predicate];
        NSLog(@"%@", results);
        
        // LIKE运算符
        predicate = [NSPredicate predicateWithFormat:@"SELF LIKE '*eak??'"];
        results = [names filteredArrayUsingPredicate:predicate];
        NSLog(@"%@", results);
    }
    
    return 0;
}

