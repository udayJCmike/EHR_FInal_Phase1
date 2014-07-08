//
//  lumbopelvic1ViewController.h
//  EHR
//
//  Created by DeemsysInc on 2/27/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"

#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface lumbopelvic1ViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate,MBProgressHUDDelegate>
{
    int c;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
    NSMutableArray *functionaldeficit;
    NSMutableArray *treatment;
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button3;
    IBOutlet UIButton *button4;
    IBOutlet UIButton *button5;
    IBOutlet UIButton *button6;
    IBOutlet UIButton *button7;
    IBOutlet UIButton *button8;
    IBOutlet UIButton *button9;
    IBOutlet UIButton *button10;
    IBOutlet UIButton *button11;
    IBOutlet UIButton *button12;
    IBOutlet UIButton *button13;
    IBOutlet UIButton *button14;
    IBOutlet UIButton *button15;
    IBOutlet UIButton *button16;
    IBOutlet UIButton *button17;
    IBOutlet UIButton *button18;
    IBOutlet UIButton *button19;
    IBOutlet UIButton *button20;
    IBOutlet UIButton *cancel1;
    IBOutlet UIButton *cancel2;
    IBOutlet UIButton *submit;
    IBOutlet UIButton *reset1;
    
    IBOutlet UIButton *reset2;
    
    IBOutlet UIButton *button21;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSString*sitting;
    NSString *lifting;
    NSString *walking;
    NSString *stairs;
    NSString *standing;
    NSString *other;
    NSString *spi;
    NSString*sup;
    NSString *nerve;
    NSString *chir;
    NSString *ct;
    NSString *hep;
    NSString *emg;
    NSString *phys;
    NSString*radio;
    NSString*mod;
    NSString *outside;
    NSString *orthotic;
    NSString*label1;
    NSString *dc;
    NSString *other1;
    NSString *patientstatus;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30;
    IBOutlet UITextView *assessment;
    IBOutlet UISegmentedControl *patient;
    IBOutlet UITextField *fdother;
    
    IBOutlet UITextField *planother;
}
- (IBAction)deletefunc:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *deletefunc;
- (IBAction)reset:(id)sender;

@property (retain, nonatomic) IBOutlet UIButton *cancel2;
@property (retain, nonatomic) IBOutlet UIButton *reset2;
@property (retain, nonatomic) IBOutlet UITextField *mo_l1l;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UITextField *mol1r;
@property (retain, nonatomic) IBOutlet UITextField *mo_l2l;
@property (retain, nonatomic) IBOutlet UITextField *mo_l2r;
@property (retain, nonatomic) IBOutlet UITextField *mo_l3l;
@property (retain, nonatomic) IBOutlet UITextField *mo_l3r;
@property (retain, nonatomic) IBOutlet UITextField *mo_l4l;
@property (retain, nonatomic) IBOutlet UITextField *mo_l4r;
@property (retain, nonatomic) IBOutlet UITextField *mo_l5l;
@property (retain, nonatomic) IBOutlet UITextField *mo_l5r;

@property (retain, nonatomic) IBOutlet UITextField *ref_l4l;
@property (retain, nonatomic) IBOutlet UITextField *ref_l4r;
@property (retain, nonatomic) IBOutlet UITextField *ref_l5l;
@property (retain, nonatomic) IBOutlet UITextField *ref_l5r;
@property (retain, nonatomic) IBOutlet UITextField *mo_sil;
@property (retain, nonatomic) IBOutlet UITextField *mo_sir;
@property (retain, nonatomic) IBOutlet UITextField *ref_sil;
@property (retain, nonatomic) IBOutlet UITextField *ref_sir;
@property (retain, nonatomic) IBOutlet UITextField *diag1;
@property (retain, nonatomic) IBOutlet UITextField *diag2;
@property (retain, nonatomic) IBOutlet UITextField *diag3;
@property (retain, nonatomic) IBOutlet UITextField *diag4;
@property (retain, nonatomic) IBOutlet UITextField *diag5;
@property (retain, nonatomic) IBOutlet UITextField *plan1;
@property (retain, nonatomic) IBOutlet UITextField *plan2;
@property (retain, nonatomic) IBOutlet UITextField *physin;
@property (strong, nonatomic) NSMutableDictionary * recorddict;
@property (strong, nonatomic) NSMutableDictionary * resultset;
@property (strong, nonatomic) NSMutableArray *functionaldeficit ;
@property (strong, nonatomic) NSMutableArray *treatment;
@property (retain, nonatomic) IBOutlet UISegmentedControl *patient;
- (IBAction)SAVE:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *fdother;
@property (retain, nonatomic) IBOutlet UITextField *planother;
@property (retain, nonatomic) IBOutlet UIButton *button6;
@property (retain, nonatomic) IBOutlet UIButton *button7;
@property (retain, nonatomic) IBOutlet UIButton *button8;
@property (retain, nonatomic) IBOutlet UIButton *button9;
@property (retain, nonatomic) IBOutlet UIButton *button10;
@property (retain, nonatomic) IBOutlet UIButton *button11;
@property (retain, nonatomic) IBOutlet UIButton *button12;
@property (retain, nonatomic) IBOutlet UIButton *button13;
@property (retain, nonatomic) IBOutlet UIButton *button14;
@property (retain, nonatomic) IBOutlet UIButton *button15;
@property (retain, nonatomic) IBOutlet UIButton *button16;
@property (retain, nonatomic) IBOutlet UIButton *button17;
@property (retain, nonatomic) IBOutlet UIButton *button18;
@property (retain, nonatomic) IBOutlet UIButton *button19;
@property (retain, nonatomic) IBOutlet UIButton *button20;

@property (retain, nonatomic) IBOutlet UIButton *submit;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *reset1;

-(BOOL)validateNo:(NSString *)country1;

@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;





@end
