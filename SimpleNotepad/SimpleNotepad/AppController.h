//
//  AppController.h
//  SimpleNotepad
//
//  Created by Wang Bob on 12-7-24.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject
{
    IBOutlet NSTextView *textView;
}
-(IBAction)clearText:(id)sender;
@end
