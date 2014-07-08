//
//  ThoracicExamViewController.h
//  EHR
//
//  Created by Admin on 22/02/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//
#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface ThoracicExamViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    
    IBOutlet UITextField *patname;
    
    IBOutlet UITextField *datefield;
    
    IBOutlet UITextField *text2;
    
    IBOutlet UITextField *text3;
    
    IBOutlet UISegmentedControl *seg1;
    IBOutlet UISegmentedControl *seg2;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
    IBOutlet UISegmentedControl *seg4;
    IBOutlet UISegmentedControl *seg3;
    IBOutlet UISegmentedControl *seg5;
    IBOutlet UISegmentedControl *seg6;
    
    IBOutlet UISegmentedControl *seg7;
    
    IBOutlet UISegmentedControl *seg8;
    
    IBOutlet UISegmentedControl *seg9;
    
    IBOutlet UISegmentedControl *seg10;
    
    IBOutlet UISegmentedControl *seg11;
    
    IBOutlet UISegmentedControl *seg12;
    
    IBOutlet UISegmentedControl *seg13;
    IBOutlet UITextField *othernotes;
    IBOutlet UITextField *flex;
    IBOutlet UITextField *t4;
    IBOutlet UITextField *t7;
    
    IBOutlet UIButton *checky4;
    IBOutlet UIButton *checky3;
    IBOutlet UIButton *checky2;
    IBOutlet UIButton *checky1;
    IBOutlet UITextField *t12;
    IBOutlet UITextField *t11;
    IBOutlet UITextField *t10;
    IBOutlet UITextField *t9;
    IBOutlet UITextField *t8;
    IBOutlet UITextField *t6;
    IBOutlet UITextField *t5;
    IBOutlet UITextField *t3;
    IBOutlet UITextField *t2;
    IBOutlet UITextField *t1;
    IBOutlet UITextField *rotr;
    IBOutlet UITextField *rotl;
    IBOutlet UITextField *latflexr;
    IBOutlet UITextField *latflex;
    IBOutlet UITextField *extens;
    
    IBOutlet UITextField *br;
    IBOutlet UITextField *bl;
    IBOutlet UITextField *str;
    IBOutlet UITextField *stl;
    IBOutlet UITextField *sor;
    IBOutlet UITextField *sol;
    IBOutlet UITextField *dr;
    IBOutlet UITextField *dl;
    IBOutlet UITextField *vr;
    IBOutlet UITextField *vl;
    IBOutlet UITextField *sr;
    IBOutlet UITextField *sl;
    IBOutlet UITextField *adr;
    IBOutlet UITextField *adl;
    
    
    
    
}
- (IBAction)reset:(id)sender;
- (IBAction)cancel:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)NSMutableDictionary*resultset;
- (IBAction)seg13:(id)sender;
- (IBAction)seg12:(id)sender;
- (IBAction)sseg11:(id)sender;
- (IBAction)seg10:(id)sender;
- (IBAction)seg4:(id)sender;
- (IBAction)seg1:(id)sender;
- (IBAction)seg2:(id)sender;
- (IBAction)seg3:(id)sender;
- (IBAction)seg5:(id)sender;
- (IBAction)seg6:(id)sender;
- (IBAction)seg7:(id)sender;
- (IBAction)seg8:(id)sender;
- (IBAction)seg9:(id)sender;


- (IBAction)next:(id)sender;
- (IBAction)checkchange:(UIButton *)sender;

@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;



@end
