//
//  HippaViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "/usr/include/sqlite3.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"



@interface HippaViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    IBOutlet UITextField *effectivedate;
    NSMutableDictionary * recorddict;
    IBOutlet UITextField * name;
    IBOutlet UITextField * sign;
    IBOutlet UITextField * witness;
    IBOutlet UITextField * date;
    NSString *databasePath;
    IBOutlet UIButton *reset1;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *reset2;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7;
    // sqlite3 * ehrdbase1;
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
    
    
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;

@property(nonatomic,retain)NSMutableDictionary * staff;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;


@end
