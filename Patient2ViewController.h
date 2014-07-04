//
//  Patient2ViewController.h
//  EHR
//
//  Created by DeemsysInc on 10/7/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "Patient3ViewController.h"
#import "TextFieldDatePicker.h"
#import "UITextField+AKNumericFormatter.h"
#import "AKNumericFormatter.h"

@interface Patient2ViewController : UIViewController<TextFieldDatePickerDelegate,UITextFieldDelegate>
{
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40;
    IBOutlet UITextField*medwhere;
    IBOutlet UITextField*dateOfAccident;
    IBOutlet UITextField*nameofattorney;
    IBOutlet UITextField*attorneyph;
    IBOutlet UITextField*nop;
    IBOutlet UITextField*comname;
    IBOutlet UITextField*comph;
    IBOutlet UITextField*autoname;
    IBOutlet UITextField*autoph;
    IBOutlet UITextField*autopolicy;
    IBOutlet UITextField*helname;
    IBOutlet UITextField*helph;
    
    IBOutlet UISwitch *switch1;
    IBOutlet UISwitch *switch2;
    IBOutlet UISwitch *switch3;
    IBOutlet UISwitch *switch4;
    IBOutlet UILabel*resLabel1;
    IBOutlet UILabel*resLabel2;
    IBOutlet UILabel*resLabel3;
    IBOutlet UILabel*resLabel4;
    
    IBOutlet UIButton *cancel;
    NSString*type;
    
    UIDatePicker*datePicker;
    IBOutlet UITextField*setdate;
    IBOutlet UITextField *optwhen;
    int c;
    int a,b,d ;
    NSMutableDictionary *temp;
    
    IBOutlet UILabel*segtype;
    IBOutlet UISegmentedControl*seg;
    
    NSMutableDictionary *recorddict;
}
@property (retain, nonatomic) IBOutlet UITextField *text1;
@property (retain, nonatomic) IBOutlet UITextField *text2;
@property (retain, nonatomic) IBOutlet UITextField *text3;
@property (retain, nonatomic) IBOutlet UITextField *text4;
@property (retain, nonatomic) IBOutlet UITextField *text5;
@property (retain, nonatomic)NSMutableDictionary *resultset;

@property (retain, nonatomic) IBOutlet UIButton *edit;
@property (nonatomic, retain)NSMutableDictionary *staff;




@property (retain, nonatomic) IBOutlet UILabel *reslabel5;
@property (retain, nonatomic) IBOutlet UILabel *reslabel6;
@property (retain, nonatomic) IBOutlet UILabel *reslabel7;
@property (retain, nonatomic) IBOutlet UITextField *other;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender;
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender;
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender;
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender;
@property (nonatomic, retain) UISwitch *switch1;
@property (nonatomic, retain) UISwitch *switch2;
@property (nonatomic, retain) UISwitch *switch3;
@property (nonatomic, retain) UISwitch *switch4;
@property (nonatomic, retain) UILabel *resLabel1;
@property (nonatomic, retain) UILabel *resLabel2;
@property (nonatomic, retain) UILabel *resLabel3;
@property (nonatomic, retain) UILabel *resLabel4;
@property (retain, nonatomic) IBOutlet UISwitch *switch5;
@property (retain, nonatomic) IBOutlet UISwitch *switch6;
@property (retain, nonatomic) IBOutlet UISwitch *switch7;

@property(nonatomic,retain)UISegmentedControl*seg;
@property(nonatomic,retain)UILabel*segtype;
@property (retain, nonatomic) IBOutlet UIButton *cancel;


-(IBAction)savecontinuebtn:(id)sender;

-(IBAction)segselected:(id)sender;
-(IBAction)clear:(id)sender;

@end
