//
//  authorizeandconsenttreatViewController.h
//  EHR
//
//  Created by DeemSysInc on 15/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <sqlite3.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface authorizeandconsenttreatViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    IBOutlet UITextField * sign;
    IBOutlet UITextField * date;
    IBOutlet UITextField * name;
    IBOutlet UITextField * patname;
    NSMutableDictionary * recorddict;
    NSString * databasePath;
    
    IBOutlet UIButton *reset1;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *reset2;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7;
    // sqlite3 * ehrdb;
    
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
    
}
- (IBAction)delete:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *submit;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *delete;
@property (nonatomic, retain)NSMutableDictionary *staff;
-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property( nonatomic, retain)NSMutableDictionary * recorddict;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;

@property (retain, nonatomic) IBOutlet UIButton *cancel2;

@end
