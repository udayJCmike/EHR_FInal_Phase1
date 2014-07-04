//
//  QuadrupleVisualAnalogueScale.h
//  EHR
//
//  Created by DeemsysInc on 4/1/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface QuadrupleVisualAnalogueScale : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    NSMutableDictionary*recorddict;
    NSMutableDictionary*resultset;
    BOOL isConnect;
    MBProgressHUD *HUD;
    NSString *segval;
    IBOutlet UISegmentedControl *painseg;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15;
    NSString *temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33;
}
@property (retain, nonatomic) IBOutlet UITextField *name;
@property (retain, nonatomic) IBOutlet UITextField *number;
@property (retain, nonatomic) IBOutlet UITextField *date;
@property (retain, nonatomic) IBOutlet UITextField *painname;
@property (retain, nonatomic) IBOutlet UILabel *scale1;
@property (retain, nonatomic) IBOutlet UILabel *scale2;
@property (retain, nonatomic) IBOutlet UILabel *scale3;
@property (retain, nonatomic) IBOutlet UILabel *scale4;
@property (retain, nonatomic) IBOutlet UITextField *percentage;
@property (retain, nonatomic) IBOutlet UISlider *slider1;
@property (retain, nonatomic) IBOutlet UISlider *slider2;
@property (retain, nonatomic) IBOutlet UISlider *slider3;
@property (retain, nonatomic) IBOutlet UISlider *slider4;
@property(retain,nonatomic)NSMutableDictionary *recorddict;
@property (retain, nonatomic) IBOutlet UISegmentedControl *painseg;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property(nonatomic,retain)IBOutlet UIButton *cancel1;
@property(nonatomic,retain)IBOutlet UIButton *cancel2;
@property (retain, nonatomic) IBOutlet UIButton *edit;

@end
