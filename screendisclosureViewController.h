//
//  screendisclosureViewController.h
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

@interface screendisclosureViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    IBOutlet UITextField * date;
    IBOutlet UITextField * name;
    NSMutableDictionary * recorddict;
    NSString * databasePath;
    IBOutlet UIButton *reset1;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *reset2;
    NSString *temp,*temp1,*temp2,*temp3,*temp4;
    
    IBOutlet UIButton *Cancel1;
    
    IBOutlet UIButton *Cancel2;
    
    IBOutlet UIButton *submit1;
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property (nonatomic, retain)NSMutableDictionary *staff;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
@property (retain, nonatomic) IBOutlet UIButton *submit;
@property (retain, nonatomic) IBOutlet UIButton *submit1;

@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *reset2;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *deleteform;

@property (retain, nonatomic) IBOutlet UIButton *Cancel1;

@property (retain, nonatomic) IBOutlet UIButton *Cancel2;

@end
