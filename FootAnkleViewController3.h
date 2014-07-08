//
//  FootAnkleViewController3.h
//  FootAnkleQuestionnaire
//
//  Created by deemsys on 3/10/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "DatePickerViewController.h"
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"

@interface FootAnkleViewController3 : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate,UITextFieldDelegate>
{
    IBOutlet UITextField *ssn;
    IBOutlet UITextField *birthdate;
    IBOutlet UITextField *datey;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *reset2;
    IBOutlet UIButton *reset1;
    int suc;
    NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39;
    IBOutlet UIButton *radii6;
    IBOutlet UIButton *radii5;
    IBOutlet UIButton *radii4;
    IBOutlet UIButton *radii3;
    IBOutlet UIButton *radii2;
    IBOutlet UIButton *radii1;
    
    
    IBOutlet UIButton *radiii6;
    IBOutlet UIButton *radiii5;
    IBOutlet UIButton *radiii4;
    IBOutlet UIButton *radiii3;
    IBOutlet UIButton *radiii2;
    IBOutlet UIButton *radiii1;
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@property (nonatomic, retain)NSMutableDictionary *staff;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)NSMutableDictionary*resultset;
- (IBAction)next:(id)sender;

- (IBAction)radii6:(id)sender;
- (IBAction)radii5:(id)sender;
- (IBAction)radii4:(id)sender;
- (IBAction)radii2:(id)sender;
- (IBAction)radii1:(id)sender;
- (IBAction)radii3:(id)sender;

@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;

@property (retain, nonatomic) IBOutlet UIButton *cancel2;

- (IBAction)radiii6:(id)sender;
- (IBAction)radiii5:(id)sender;
- (IBAction)radiii4:(id)sender;
- (IBAction)radiii2:(id)sender;
- (IBAction)radiii1:(id)sender;
- (IBAction)radiii3:(id)sender;
@end
