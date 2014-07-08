//
//  healthinsuranceverificationViewController.h
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
#import "WelcomeViewController.h"

@interface healthinsuranceverificationViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    IBOutlet UILabel * healthinsuranceswitchlabel;
    IBOutlet UITextField * patientname;
    IBOutlet UITextField * accidentdate;
    IBOutlet UISwitch * healthinsuranceswitch;
    IBOutlet UITextField * employersname;
    IBOutlet UITextField * insurancecompany;
    IBOutlet UITextField * insurancephone;
    IBOutlet UITextField * policy;
    IBOutlet UITextField * group;
    IBOutlet UITextField * supplement;
    IBOutlet UITextField * supplementphone;
    IBOutlet UITextField * patientsign;
    IBOutlet UITextField * patientsigndate;
    IBOutlet UITextField * guardsign;
    IBOutlet UITextField * guardsigndate;
    NSMutableDictionary * recorddict;
    NSString *databasePath;
    IBOutlet UIButton *reset1;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *reset2;
    IBOutlet UIButton *cancel1;
    IBOutlet UIButton *cancel2;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18;
    
    
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
-(IBAction)insuranceswitchchange:(id)sender;
-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
- (IBAction)cancel:(id)sender;
@property(nonatomic,retain) NSMutableDictionary * staff;
@property (nonatomic,retain) UISwitch * healthinsuranceswitch;
@property(nonatomic,retain) NSMutableDictionary * recorddict;
@property(nonatomic,retain) UILabel * healthinsuranceswitchlabel;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property(nonatomic,retain)IBOutlet UIButton *cancel1;
@property(nonatomic,retain)IBOutlet UIButton *cancel2;

@end
