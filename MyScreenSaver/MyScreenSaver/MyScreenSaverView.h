//
//  MyScreenSaverView.h
//  MyScreenSaver
//
//  Created by debugger on 12-8-2.
//  Copyright (c) 2012年 debugger. All rights reserved.
//

#import <ScreenSaver/ScreenSaver.h>

// 修改File's Owner的class是MyScreenSaverView类

@interface MyScreenSaverView : ScreenSaverView
{
    // 选项操作表
    IBOutlet id configSheet;
    // 填充类型的
    IBOutlet id drawFilledShapesOption;
    // 框线类型的
    IBOutlet id drawOutlinedShapesOption;
    // 两者都可以
    IBOutlet id drawBothOption;
}

// 点击去掉按钮
-(IBAction)cancelClick:(id)sender;
// 确认按钮
-(IBAction)okClick:(id)sender;
@end
