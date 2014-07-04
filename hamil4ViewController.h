//
//  hamil4ViewController.h
//  hamil
//
//  Created by Admin on 05/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
@interface hamil4ViewController : UIViewController<TextFieldDatePickerDelegate>
{
    IBOutlet UISlider *slider1;
    IBOutlet UILabel *painlevel;
    IBOutlet UIButton *b1;
    IBOutlet UIButton *b2;
    IBOutlet UIButton *b3;
    IBOutlet UIButton *b4;
    IBOutlet UIButton *b5;
    IBOutlet UIButton *b6;
    IBOutlet UIButton *b7;
    IBOutlet UIButton *b8;
    IBOutlet UIButton *b9;
    IBOutlet UIButton *b10;
    IBOutlet UIButton *b11;
    IBOutlet UIButton *b12;
    IBOutlet UIButton *b13;
    IBOutlet UIButton *b14;
    IBOutlet UIButton *b15;
    IBOutlet UIButton *b16;
    IBOutlet UIButton *b17;
    IBOutlet UIButton *b18;
    IBOutlet UIButton *b19;
    IBOutlet UIButton *b20;
    IBOutlet UIButton *b21;
    IBOutlet UIButton *b22;
    IBOutlet UIButton *b23;
    IBOutlet UIButton *b24;
    IBOutlet UIButton *b25;
    IBOutlet UIButton *b26;
    IBOutlet UIButton *b27;
    IBOutlet UIButton *b28;
    IBOutlet UIButton *b29;
    IBOutlet UIButton *b30;
    IBOutlet UIButton *b31;
    IBOutlet UIButton *b32;
    IBOutlet UIButton *b33;
    IBOutlet UIButton *b34;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *moretestdict;
    NSString *segg1,*segg2,*segg3,*segg4,*segg5,*segg6;
    int a;
}
- (IBAction)seg4:(id)sender;
- (IBAction)seg3:(id)sender;
- (IBAction)seg2:(id)sender;
- (IBAction)seg1:(id)sender;
- (IBAction)seg5:(id)sender;
- (IBAction)seg6:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *allisl;
@property (retain, nonatomic) IBOutlet UISegmentedControl *allisr;
@property (retain, nonatomic) IBOutlet UISegmentedControl *wlrl;
@property (retain, nonatomic) IBOutlet UISegmentedControl *wlrr;
@property (retain, nonatomic) IBOutlet UISegmentedControl *slrl;
@property (retain, nonatomic) IBOutlet UISegmentedControl *slrr;
- (IBAction)sliderchange:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)moretest:(id)sender;
- (IBAction)reset:(id)sender;
@property(nonatomic,retain) NSMutableDictionary *recorddict;
@property(nonatomic,retain) NSMutableDictionary *moretestdict;
@end
