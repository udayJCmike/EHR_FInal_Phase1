//
//  treatminorViewController.h
//  EHR
//
//  Created by DeemSysInc on 15/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface treatminorViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    NSMutableDictionary * recorddict;
    IBOutlet UITextField * patientName;
    IBOutlet UITextField * age;
    IBOutlet UITextField * drname;
    IBOutlet UITextField * sign;
    IBOutlet UITextField * date;
    IBOutlet UITextField * witness;
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
    
    NSString *databasePath;
    IBOutlet UIButton *reset1;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *reset2;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8;
    
}
-(IBAction)submit:(id)sender;
- (IBAction)delete:(id)sender;
-(IBAction)reset:(id)sender;
@property (nonatomic, retain)NSMutableDictionary *staff;
@property(nonatomic,retain) NSMutableDictionary * recorddict;
@property(nonatomic,retain)UITextField * patientName;
@property(nonatomic,retain)UITextField * age;
@property(nonatomic,retain)UITextField * drname;
@property(nonatomic,retain)UITextField * sign;
@property(nonatomic,retain)UITextField * date;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *delete;
@property (retain, nonatomic) IBOutlet UIButton *submit;
@property(nonatomic,retain)UITextField * witness;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;

@property (retain, nonatomic) IBOutlet UIButton *cancel2;

@end
