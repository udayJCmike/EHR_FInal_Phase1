//
//  noticeandrequestViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "WelcomeViewController.h"

@interface noticeandrequestViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    IBOutlet UITextField * insurancecompanyname;
    IBOutlet UITextField * address;
    IBOutlet UITextField * patientname;
    IBOutlet UITextField * date;
    IBOutlet UITextField * enrollno;
    IBOutlet UITextField * by;
    IBOutlet UITextField * faxnumber;
    IBOutlet UITextField * sincerly;
    IBOutlet UITextField * patname2;
    IBOutlet UITextField * authcr;
    NSString* noobjec;
    NSMutableDictionary * recorddict;
    NSMutableArray * selectforms;
    IBOutlet UIButton * button1;
    IBOutlet UIButton *reset1;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *reset2;
    IBOutlet UIButton *cancel1;
    IBOutlet UIButton *cancel2;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15;
}
@property (nonatomic, retain)NSMutableDictionary *staff;
-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
- (IBAction)cancel:(id)sender;

@property(nonatomic,retain)NSMutableDictionary * recorddict;
-(IBAction)checkboxSelected:(UIButton*)sender;
@property(nonatomic,retain)NSMutableArray * selectforms;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property(nonatomic,retain)IBOutlet UIButton *cancel1;
@property(nonatomic,retain)IBOutlet UIButton *cancel2;
@property(nonatomic,retain)IBOutlet UIButton*button1;

@end
