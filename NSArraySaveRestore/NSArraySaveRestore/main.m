//
//  main.m
//  NSArraySaveRestore
//
//  Created by Wang Bob on 12-7-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool 
    {
        NSArray *phrase;
        phrase = [NSArray arrayWithObjects:@"I", @"seem", @"to", @"be", @"a", @"verb", nil];

        // 写入plist文件
        // cat /tmp/phrase.txt
        //      1	<?xml version="1.0" encoding="UTF-8"?>
        //      2	<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
        //      3	<plist version="1.0">
        //      4	<array>
        //      5		<string>I</string>
        //      6		<string>seem</string>
        //      7		<string>to</string>
        //      8		<string>be</string>
        //      9		<string>a</string>
        //      10		<string>verb</string>
        //      11	</array>
        //      12	</plist>
        [phrase writeToFile:@"/tmp/phrase.txt" atomically:YES];
        
        // 恢复
        NSArray *phrase2 = [NSArray arrayWithContentsOfFile:@"/tmp/phrase.txt"];
        //      NSArraySaveRestore[79386:707] (
        //          I,
        //          seem,
        //          to,
        //          be,
        //          a,
        //          verb
        //      )
        NSLog(@"%@", phrase2);
    }
    
    return 0;
}

