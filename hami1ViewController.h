//
//  hami1ViewController.h
//  hamil
//
//  Created by Admin on 06/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
@interface hami1ViewController : UIViewController<TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>

{
    
    IBOutlet UITextField *radiates;
    IBOutlet UITextField *mo_ni_oth;
    IBOutlet UITextField *last_day;
    IBOutlet UITextField *cond_aff_oth;
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
    IBOutlet UIButton *b35;
    IBOutlet UIButton *b36;
    IBOutlet UIButton *b37;
    IBOutlet UIButton *b38;
    IBOutlet UIButton *b39;
    IBOutlet UIButton *b40;
    IBOutlet UIButton *b41;
    IBOutlet UIButton *b42;
    IBOutlet UIButton *b43;
    IBOutlet UIButton *b44;
    IBOutlet UIButton *b45;
    IBOutlet UIButton *b46;
    IBOutlet UIButton *b47;
    IBOutlet UIButton *b48;
    IBOutlet UIButton *b49;
    IBOutlet UIButton *slighty;
    IBOutlet UIButton *moderately;
    IBOutlet UIButton *greatly;
    
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6;
    int a;
    
    IBOutlet UISegmentedControl *atpreseg;
    NSString *at_pre_injury;
}
- (IBAction)moretest:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;
@property(nonatomic,retain)NSMutableDictionary *recorddict;

@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;

@end
