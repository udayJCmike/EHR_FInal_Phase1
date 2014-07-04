//
//  wristandhanddisabilityViewController.h
//  wristandhanddisability
//
//  Created by DeemsysInc on 3/5/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
@interface wristandhanddisabilityViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>

{
    NSString *val1;
    NSString *val2;
    NSString *val3;
    NSString *val4;
    NSMutableDictionary *recorddict;
    int c;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16;
    BOOL isConnect;
    NSMutableDictionary *resultset;
    MBProgressHUD *HUD;
    
    IBOutlet UIButton *cancel;
    
}
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property(nonatomic,retain)NSMutableDictionary*resultset;
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *date;
@property (strong, nonatomic) IBOutlet UIButton *sec11;
@property (strong, nonatomic) IBOutlet UIButton *sec12;
@property (strong, nonatomic) IBOutlet UIButton *sec13;
@property (strong, nonatomic) IBOutlet UIButton *sec14;
@property (strong, nonatomic) IBOutlet UIButton *sec15;
@property (strong, nonatomic) IBOutlet UIButton *sec16;
@property (strong, nonatomic) IBOutlet UIButton *sec21;
@property (strong, nonatomic) IBOutlet UIButton *sec22;
@property (strong, nonatomic) IBOutlet UIButton *sec23;
@property (strong, nonatomic) IBOutlet UIButton *sec24;
@property (strong, nonatomic) IBOutlet UIButton *sec25;
@property (strong, nonatomic) IBOutlet UIButton *sec26;
@property (strong, nonatomic) IBOutlet UIButton *sec31;
@property (strong, nonatomic) IBOutlet UIButton *sec32;
@property (strong, nonatomic) IBOutlet UIButton *sec33;
@property (strong, nonatomic) IBOutlet UIButton *sec34;
@property (strong, nonatomic) IBOutlet UIButton *sec35;
@property (strong, nonatomic) IBOutlet UIButton *sec36;
@property (strong, nonatomic) IBOutlet UIButton *sec41;
@property (strong, nonatomic) IBOutlet UIButton *sec42;
@property (strong, nonatomic) IBOutlet UIButton *sec43;
@property (strong, nonatomic) IBOutlet UIButton *sec44;
@property (strong, nonatomic) IBOutlet UIButton *sec45;
@property (strong, nonatomic) IBOutlet UIButton *sec46;

@property (retain, nonatomic) IBOutlet UIButton *cancel;


@end
