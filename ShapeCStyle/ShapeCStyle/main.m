//
//  main.m
//  ShapeCStyle
//
//  Created by Wang Bob on 11-11-7.
//  Copyright 2011年 nibirutech.com. All rights reserved.
//

#import <Foundation/Foundation.h>

// 形状类型
typedef enum {
    kCircle,
    kRectangle
} ShapeType;

// 颜色
typedef enum {
    kRedColor,
    kGreenColor
} ShapeColor;

// 形状结构体
typedef struct {
    int x, y, width, height;
} ShapeRect;

typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
} Shape;

void drawCircle(ShapeRect rect, ShapeColor color);
void drawRectangle(ShapeRect rect, ShapeColor color);
void drawShapes(Shape shapes[], int count);

void drawCircle(ShapeRect rect, ShapeColor color)
{
    NSLog(@"drawCircle called");
}

void drawRectangle(ShapeRect rect, ShapeColor color)
{
    NSLog(@"drawRectangle called");
}

void drawShapes(Shape shapes[], int count)
{
    int i = 0;
    
    for (i = 0; i < count; i++) 
    {
        switch (shapes[i].type) 
        {
            case kCircle:
                drawCircle(shapes[i].bounds, shapes[i].fillColor);
                break;
            case kRectangle:
                drawRectangle(shapes[i].bounds, shapes[i].fillColor);
                break;
            default:
                break;
        }
    }
}

int main (int argc, const char * argv[])
{
    Shape shapes[2];
    
    ShapeRect rect0 = {0, 0, 10, 20};
    shapes[0].type = kCircle;
    shapes[0].fillColor = kRedColor;
    shapes[0].bounds = rect0;
    
    ShapeRect rect1 = {0, 0, 10, 20};
    shapes[1].type = kCircle;
    shapes[1].fillColor = kRedColor;
    shapes[1].bounds = rect1;
    
    drawShapes(shapes, 2);
}