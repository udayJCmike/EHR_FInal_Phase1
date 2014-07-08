//
//  ThoracicSpineViewController.h
//  physicalexam
//
//  Created by deemsys on 2/28/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
@interface ThoracicSpineViewController : UIViewController<TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
    
    IBOutlet UITextField *smoker;
    IBOutlet UITextField *chest;
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
    
    IBOutlet UISegmentedControl *seg;
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;

- (IBAction)segc:(id)sender;

- (IBAction)next:(id)sender;
- (IBAction)checkchange:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *check1;
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
@property (retain, nonatomic) IBOutlet UIButton *check20;
@property (retain, nonatomic) IBOutlet UIButton *check21;
@property (retain, nonatomic) IBOutlet UIButton *check22;
@property (retain, nonatomic) IBOutlet UIButton *check23;
@property (retain, nonatomic) IBOutlet UIButton *check24;
@property (retain, nonatomic) IBOutlet UIButton *check25;
@property (retain, nonatomic) IBOutlet UIButton *check26;
@property (retain, nonatomic) IBOutlet UIButton *check27;
@property (retain, nonatomic) IBOutlet UIButton *check28;
@property (retain, nonatomic) IBOutlet UIButton *check29;
@property (retain, nonatomic) IBOutlet UIButton *check30;
@property (retain, nonatomic) IBOutlet UIButton *check31;
@property (retain, nonatomic) IBOutlet UIButton *check32;
@property (retain, nonatomic) IBOutlet UIButton *check33;
@property (retain, nonatomic) IBOutlet UIButton *check34;
@property (retain, nonatomic) IBOutlet UILabel *lab1;
@property (retain, nonatomic) IBOutlet UILabel *lab2;
@property (retain, nonatomic) IBOutlet UILabel *lab3;
@property (retain, nonatomic) IBOutlet UILabel *lab4;

@property (retain, nonatomic) IBOutlet UIButton *check35;
@property (retain, nonatomic) IBOutlet UIButton *check36;
@property (retain, nonatomic) IBOutlet UIButton *check37;
@property (retain, nonatomic) IBOutlet UIButton *check38;

@property (retain, nonatomic) IBOutlet UIButton *check41;
@property (retain, nonatomic) IBOutlet UIButton *check42;
@property (retain, nonatomic) IBOutlet UIButton *check43;
@property (retain, nonatomic) IBOutlet UIButton *check44;



@property(nonatomic,retain)NSMutableDictionary*recorddict;


@end
