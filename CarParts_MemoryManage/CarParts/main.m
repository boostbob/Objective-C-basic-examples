//
//  main.m
//  CarParts
//
//  Created by Wang Bob on 12-7-6.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "Engine.h"
#import "Tire.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

void StartNormalCar(Car *car);
void StartSpecCar(Car *car);

void StartNormalCar(Car *car)
{
    // 装引擎
    Engine *engine = [[Engine alloc] init];
    [car setEngine:engine];
    [engine release];
    
    // 装轮胎
    for(int i = 0; i < 4; i++)
    {
        Tire *tire = [[Tire alloc] init];
        [car setTire:tire atIndex:i];
        [tire release];
    }
    
    // 开动
    [car print];
    
    [car release];
}

void StartSpecCar(Car *car)
{
    // 更换引擎
    Slant6 *engine = [[Slant6 alloc] init];
    [car setEngine: engine];
    [engine release];
    
    // 更换轮胎
    for(int i = 0; i < 4; i++)
    {
        AllWeatherRadial *tire = [[AllWeatherRadial alloc] init];
        tire.rainHanding = 20 + i;
        tire.snowHanding = 28 + i;
        [car setTire:tire atIndex:i];
        [tire release];
    }
    
    // 开动
    [car print];
    
    [car release];
}

int main (int argc, const char * argv[])
{
    Car *car = [Car new];
        
    StartNormalCar(car);
    StartSpecCar(car);
    
    return 0;
}

