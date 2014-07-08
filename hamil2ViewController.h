//
//  hamil2ViewController.h
//  hamil
//
//  Created by Admin on 05/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
@interface hamil2ViewController : UIViewController<TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
    IBOutlet UISlider *slider1;
    IBOutlet UILabel *painlevel;
    IBOutlet UITextField *right;
    IBOutlet UITextField *left;
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
    NSString *temp1,*temp2,*temp3;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *moretestdict;
    int a;
}
- (IBAction)slidechange:(id)sender;
@property(nonatomic,retain) NSMutableDictionary *moretestdict;
@property (retain, nonatomic) IBOutlet UISegmentedControl *leftseg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *rightseg;
@property (retain, nonatomic) IBOutlet UISlider *slider1;

@property (retain, nonatomic) IBOutlet UILabel *painlevel;
- (IBAction)leftsef:(id)sender;
- (IBAction)rightseg:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)moretest:(id)sender;
- (IBAction)reset:(id)sender;
@property(nonatomic,retain) NSMutableDictionary *recorddict;
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@end
