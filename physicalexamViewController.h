//
//  physicalexamViewController.h
//  EHR
//
//  Created by DeemSysInc on 26/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//
#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
@interface physicalexamViewController : UIViewController<TextFieldDatePickerDelegate,UIPickerViewDataSource,UIPickerViewDelegate>
{
    IBOutlet UITextField *physiciansign;
    
    NSString *sex;
    IBOutlet UITextField *patname;
    
    IBOutlet UITextField *patid;
    IBOutlet UITextField *date;
    
    
    IBOutlet UITextField *bp;
    NSMutableDictionary *recorddict;
    IBOutlet UISegmentedControl *appearance;
    IBOutlet UISegmentedControl *gait;
    IBOutlet UISegmentedControl *weightseg;
    IBOutlet UISegmentedControl *posture;
    IBOutlet UITextField *visceral;
    IBOutlet UISegmentedControl *head;
    IBOutlet UISegmentedControl *romberg;
    IBOutlet UISegmentedControl *cnexam;
    IBOutlet UITextField *abnormalfind;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UISegmentedControl *sexseg;
- (IBAction)seg8:(id)sender;
- (IBAction)seg7:(id)sender;
- (IBAction)seg6:(id)sender;
- (IBAction)seg1:(id)sender;

- (IBAction)seg3:(id)sender;
- (IBAction)seg2:(id)sender;

- (IBAction)seg5:(id)sender;
@property (retain, nonatomic) IBOutlet UIPickerView *agepicker;
@property (retain, nonatomic) IBOutlet UIButton *agebut;
@property (retain, nonatomic) IBOutlet UILabel *agelabel;
@property (retain, nonatomic) IBOutlet UIPickerView *heightpicker;
@property (retain, nonatomic) IBOutlet UIPickerView *heightpicker1;
@property (retain, nonatomic) IBOutlet UIPickerView *weightpicker;
@property (retain, nonatomic) IBOutlet UIPickerView *temppicker;
@property (retain, nonatomic) IBOutlet UILabel *heightlab;
@property (retain, nonatomic) IBOutlet UILabel *heightlab1;
@property (retain, nonatomic) IBOutlet UILabel *weightlab;
@property (retain, nonatomic) IBOutlet UILabel *templab;
@property (retain, nonatomic) IBOutlet UIButton *heightbut;
@property (retain, nonatomic) IBOutlet UIButton *weightbut;
@property (retain, nonatomic) IBOutlet UIButton *tempbut;
@property (retain, nonatomic) IBOutlet UIPickerView *pulsepicker;
@property (retain, nonatomic) IBOutlet UIButton *pulsebut;
@property (retain, nonatomic) IBOutlet UILabel *pulselabel;
- (IBAction)submit:(id)sender;

@end
