//
//  CoolScreenSaverView.h
//  CoolScreenSaver
//
//  Created by debugger on 12-8-4.
//  Copyright (c) 2012年 debugger. All rights reserved.
//

#import <ScreenSaver/ScreenSaver.h>
#import "OpenGL/gl.h"
#import "OpenGL/glu.h"
#import "MyOpenGLView.h"

@interface ComCocoaDevCentralBob_CoolScreenSaverView : ScreenSaverView
{
    // NSOpenGLView *glView;
    
    // 解决isOpaque的问题
    // MyOpenGLView *glView;
    
    // 更换成防止冲突的名字
    ComCocoaDevCentralBob_CoolScreenSaver_MyOpenGLView *glView;
    GLfloat rotation;
}
-(void)setUpOpenGL;
@end
