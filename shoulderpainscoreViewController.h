//
//  shoulderpainscoreViewController.h
//  shoulderpainscore
//
//  Created by DeemsysInc on 3/4/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
@interface shoulderpainscoreViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    int a;
    NSString *deg;
    NSString *incap;
    NSString *sleep;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15, *temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41;
    NSString*night;
    NSString *painmotion;
    NSString *painrest;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSMutableDictionary *resultset;
    NSMutableDictionary *recorddict;
    
    IBOutlet UIButton *cancel;
}
@property (strong, nonatomic) IBOutlet UIButton *nextbutton;
@property (strong, nonatomic) IBOutlet UITextField *patname;
@property (strong, nonatomic) IBOutlet UITextField *number;
@property (strong, nonatomic) IBOutlet UITextField *fdate;

@property (strong, nonatomic) IBOutlet UISegmentedControl *nightlypain;
@property (strong, nonatomic) IBOutlet UISegmentedControl *sleeping;
@property (strong, nonatomic) IBOutlet UISegmentedControl *incapability;
@property (strong, nonatomic) IBOutlet UISegmentedControl *degree;
@property (strong, nonatomic) IBOutlet UISlider *painscale;
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property(nonatomic,retain)NSMutableDictionary *resultset;
@property (strong, nonatomic) IBOutlet UISegmentedControl *painatrestseg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *painmotionseg;
@property (strong, nonatomic) IBOutlet UILabel *scaleres;

@property (retain, nonatomic) IBOutlet UIButton *cancel;


@end
