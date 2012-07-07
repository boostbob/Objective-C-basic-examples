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
    Engine *engine = [Engine new];
    [car setEngine:engine];
    
    // 装轮胎
    for(int i = 0; i < 4; i++)
    {
        Tire *tire = [Tire new];
        [car setTire:tire atIndex:i];
    }
    
    // 开动
    [car print];
}

void StartSpecCar(Car *car)
{
    // 更换引擎
    Engine *engine = [Slant6 new];
    [car setEngine: engine];
    
    // 更换轮胎
    for(int i = 0; i < 4; i++)
    {
        Tire *tire = [AllWeatherRadial new];
        [car setTire:tire atIndex:i];
    }
    
    // 开动
    [car print];
}

int main (int argc, const char * argv[])
{
    Car *car = [Car new];
    
    StartNormalCar(car);
    StartSpecCar(car);
    
    return 0;
}

