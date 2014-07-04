//
//  aobViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "MBProgressHUD.h"
@interface aobViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    NSMutableDictionary * recorddict ;
    IBOutlet UITextField * day;
    IBOutlet UITextField * year;
    IBOutlet UITextField * nextday;
    IBOutlet UITextField * patientname;
    IBOutlet UITextField * patientsign;
    IBOutlet UITextField * custodialparent;
    IBOutlet UITextField * guardsign;
    IBOutlet UITextField * perrychiro;
    IBOutlet UITextField * date1;
    IBOutlet UITextField * date2;
    IBOutlet UITextField * date3;
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
    IBOutlet UITextField * newy;
    IBOutlet UIButton *reset1;
    IBOutlet UITextField *month1;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *reset2;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15;
    
}
@property (nonatomic, retain)NSMutableDictionary *staff;
@property (retain, nonatomic) IBOutlet UIButton *submit;
@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *reset2;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *deleteform;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;

@property (retain, nonatomic) IBOutlet UIButton *cancel2;

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic ,retain)NSMutableDictionary * recorddict;
@end
