//
//  CervicalSpineViewController.h
//  physicalexam
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
@interface CervicalSpineViewController : UIViewController<TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
    
    IBOutlet UITextField *edema;
    IBOutlet UITextField *_2;
    IBOutlet UITextField *_3;
    IBOutlet UITextField *_4;
    
    IBOutlet UITextField *_6;
    IBOutlet UITextField *_7;
    IBOutlet UITextField *_8;
    
    IBOutlet UITextField *_10;
    IBOutlet UITextField *_11;
    IBOutlet UITextField *_12;
    
    IBOutlet UITextField *_14;
    IBOutlet UITextField *_15;
    IBOutlet UITextField *_16;
    
    IBOutlet UITextField *_18;
    IBOutlet UITextField *_19;
    IBOutlet UITextField *_20;
    
    IBOutlet UITextField *_22;
    IBOutlet UITextField *_23;
    IBOutlet UITextField *_24;
    
    NSMutableDictionary *recorddict;
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;

- (IBAction)next:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *check1;
- (IBAction)checkchange:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *edema;
@property (retain, nonatomic) IBOutlet UITextField *trigger;

@property (retain, nonatomic) IBOutlet UIButton *check2;
@property (retain, nonatomic) IBOutlet UIButton *check3;
@property (retain, nonatomic) IBOutlet UIButton *check4;
@property (retain, nonatomic) IBOutlet UIButton *check5;
@property (retain, nonatomic) IBOutlet UIButton *check6;
@property (retain, nonatomic) IBOutlet UIButton *check7;
@property (retain, nonatomic) IBOutlet UIButton *check8;
@property (retain, nonatomic) IBOutlet UIButton *check9;
@property (retain, nonatomic) IBOutlet UIButton *check10;
@property (retain, nonatomic) IBOutlet UIButton *check11;
@property (retain, nonatomic) IBOutlet UIButton *check12;
@property (retain, nonatomic) IBOutlet UIButton *check13;
@property (retain, nonatomic) IBOutlet UIButton *check14;
@property (retain, nonatomic) IBOutlet UIButton *check15;
@property (retain, nonatomic) IBOutlet UIButton *check16;
@property (retain, nonatomic) IBOutlet UIButton *check17;
@property (retain, nonatomic) IBOutlet UIButton *check18;
@property (retain, nonatomic) IBOutlet UIButton *check19;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg1;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg3;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg4;
@property (retain, nonatomic) IBOutlet UIButton *check25;
@property (retain, nonatomic) IBOutlet UIButton *check26;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@end
