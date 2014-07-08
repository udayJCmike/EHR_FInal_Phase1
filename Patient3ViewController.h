//
//  Patient3ViewController.h
//  EHR
//
//  Created by DeemsysInc on 10/8/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "TextFieldDatePicker.h"
@interface Patient3ViewController : UIViewController<TextFieldDatePickerDelegate,UITextFieldDelegate,UIPrintInteractionControllerDelegate,MBProgressHUDDelegate>
{
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40;
    NSString*databasePath;
    NSMutableDictionary *recorddict;
    IBOutlet UITextField*otherdis;
    IBOutlet UITextField*surg;
    IBOutlet UITextField *dr;
    
    IBOutlet UITextView *medhad;
    IBOutlet UITextField*hazlist;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UITextField*patsign;
    IBOutlet UILabel*reslabel1;
    IBOutlet UILabel*reslabel2;
    IBOutlet UISwitch*switch1;
    IBOutlet UISwitch*switch2;
    IBOutlet UIButton*button1;
    IBOutlet UIButton*button2;
    IBOutlet UIButton*button3;
    IBOutlet UIButton*button4;
    IBOutlet UIButton*button5;
    IBOutlet UIButton*button6;
    IBOutlet UIButton*button7;
    IBOutlet UIButton*button8;
    IBOutlet UIButton*button9;
    IBOutlet UIButton*button10;
    IBOutlet UIButton*button11;
    IBOutlet UIButton*button12;
    IBOutlet UIButton*button13;
    IBOutlet UIButton*button14;
    IBOutlet UIButton*button15;
    IBOutlet UIButton*button16;
    IBOutlet UIButton*button17;
    IBOutlet UIButton*button18;
    IBOutlet UIButton*button19;
    IBOutlet UIButton*button20;
    IBOutlet UIButton*button21;
    IBOutlet UIButton*button22;
    IBOutlet UIButton*button23;
    IBOutlet UIButton*button24;
    IBOutlet UIButton*button25;
    IBOutlet UIButton*button26;
    IBOutlet UIButton*button27;
    IBOutlet UIButton*button28;
    IBOutlet UIButton*button29;
    IBOutlet UIButton*button30;
    IBOutlet UIButton*button31;
    IBOutlet UIButton*button32;
    IBOutlet UIButton*button33;
    IBOutlet UIButton*button34;
    IBOutlet UIButton*button35;
    IBOutlet UIButton*buttonx1;
    IBOutlet UIButton*buttonx2;
    IBOutlet UIButton*buttonx3;
    IBOutlet UIButton*buttonx4;
    IBOutlet UIButton*buttonx5;
    
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
    
    
    
    
    IBOutlet UITextField*date;
    int a,b,c;
    IBOutlet UILabel*plslisthide;
    
    NSMutableDictionary*temp;
    
    NSMutableDictionary*resultset;
    
    IBOutlet UIButton *submit;
    
    IBOutlet UIButton *update;
    
    IBOutlet UIButton *deleteform;
    
    IBOutlet UIButton *reset2;
    
    IBOutlet UIButton *reset1;
    
}

@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@property (nonatomic, retain)NSMutableDictionary *staff;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)UISwitch*switch1;
@property(nonatomic,retain)UISwitch*switch2;
@property(nonatomic,retain)UILabel *reslabel1;
@property(nonatomic,retain)UITextField*otherdis;

@property (retain, nonatomic)NSMutableDictionary *resultset;
@property(nonatomic,retain)UILabel *reslabel2;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;

@property (retain, nonatomic) IBOutlet UIButton *cancel2;

@property (retain, nonatomic) IBOutlet UIButton *submit;

@property (retain, nonatomic) IBOutlet UIButton *update;

@property (retain, nonatomic) IBOutlet UIButton *deleteform;

@property (retain, nonatomic) IBOutlet UIButton *reset2;

@property (retain, nonatomic) IBOutlet UIButton *reset1;
-(IBAction)checkboxSelected:(UIButton*)sender;
-(IBAction)submit:(id)sender;
-(IBAction)clear:(id)sender;


@end
