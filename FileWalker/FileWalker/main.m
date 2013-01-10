//
//  main.m
//  FileWalker
//
//  Created by Wang Bob on 12-7-6.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool 
    {
        NSFileManager *manager;
        NSString *home;
        NSMutableArray *files;
        
        manager = [NSFileManager defaultManager];
        home = [@"~/Pictures/" stringByExpandingTildeInPath];
        files = [NSMutableArray arrayWithCapacity:60];
        
        for (NSString *filename in [manager enumeratorAtPath:home]) 
        {
            if([[filename pathExtension] isEqualTo:@"jpg"])
            {
                [files addObject:filename];
            }
        }
        
        for(NSString* filename in files)
        {
            NSLog(@"%@", filename);
        }
        
    }
    
    return 0;
}

