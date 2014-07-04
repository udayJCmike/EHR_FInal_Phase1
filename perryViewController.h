//
//  perryViewController.h
//  EHR
//
//  Created by DeemSysInc on 17/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "/usr/include/sqlite3.h"
#import "TextFieldDatePicker.h"
@interface perryViewController : UIViewController<TextFieldDatePickerDelegate>
{
    NSMutableDictionary * recorddict;
    IBOutlet UITextField * name;
    IBOutlet UITextField * sign;
    IBOutlet UITextField * witness;
    IBOutlet UITextField * date;
    NSString*databasePath;
 //   sqlite3*ehrdbase3;
    
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic,retain)NSMutableDictionary * recorddict;

@end
