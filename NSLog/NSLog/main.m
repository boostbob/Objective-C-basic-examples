//
//  main.m
//  NSLog
//
//  Created by Wang Bob on 12-7-5.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    const int LENGTH = 5;
    const char *words[LENGTH] = {"china", "japan", "chengdu", "lisa", "kity"};
    
    int i = 0;
    
    for (i = 0; i< LENGTH; i++) 
    {
        NSLog(@"%s is %d characters long", words[i], (int)strlen(words[i]));
    }
    
    return 0;
}

