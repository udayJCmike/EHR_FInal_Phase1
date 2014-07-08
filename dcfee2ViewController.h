//
//  dcfee2ViewController.h
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"


@interface dcfee2ViewController : UIViewController<TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
    NSMutableDictionary *recorddict,*resultset;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51;
    int c;
    float calc3;
    IBOutlet UITextField *fitting;
    IBOutlet UITextField *activities;
    
    IBOutlet UITextField *muscletesthand;
    IBOutlet UITextField *rangeofmotionhand;
    IBOutlet UITextField *rangeofmotion;
    IBOutlet UITextField *muscletest;
    IBOutlet UITextField *urinalysis;
    IBOutlet UITextField *extremity;
    IBOutlet UITextField *regions3;
    IBOutlet UITextField *regions2;
    IBOutlet UITextField *wstimulation;
    IBOutlet UITextField *wostimulation;
    IBOutlet UITextField *training;
    IBOutlet UITextField *selfcare;
    IBOutlet UITextField *regions1;
    
    
    IBOutlet UITextField *evaluation;
    
    IBOutlet UITextField *test;
    IBOutlet UITextField *rl;
    IBOutlet UITextField *trunk;
    IBOutlet UITextField *lower;
    IBOutlet UITextField *upper;
    IBOutlet UITextField *sensory;
    IBOutlet UITextField *wfwave;
    IBOutlet UITextField *wofwave;
    
    IBOutlet UITextField *page3;
    
}
@property (retain, nonatomic) IBOutlet UITextField *text2;
@property (retain, nonatomic) IBOutlet UITextField *text1;

- (IBAction)CANCEL:(id)sender;


- (IBAction)reset:(id)sender;



@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;

@property (retain, nonatomic) IBOutlet UITextField *fitting;
@property (retain, nonatomic) IBOutlet UITextField *activities;
@property (retain, nonatomic) IBOutlet UITextField *selfcare;
@property (retain, nonatomic) IBOutlet UITextField *training;
@property (retain, nonatomic) IBOutlet UITextField *wostimulation;
@property (retain, nonatomic) IBOutlet UITextField *wstimulation;
@property (retain, nonatomic) IBOutlet UITextField *regions1;
@property (retain, nonatomic) IBOutlet UITextField *regions2;
@property (retain, nonatomic) IBOutlet UITextField *regions3;
@property (retain, nonatomic) IBOutlet UITextField *extremity;
@property (retain, nonatomic) IBOutlet UITextField *urinalysis;
@property (retain, nonatomic) IBOutlet UITextField *muscletest;
@property (retain, nonatomic) IBOutlet UITextField *muscletesthand;
@property (retain, nonatomic) IBOutlet UITextField *rangeofmotion;
@property (retain, nonatomic) IBOutlet UITextField *rangeofmotionhand;
@property (retain, nonatomic) IBOutlet UITextField *wofwave;
@property (retain, nonatomic) IBOutlet UITextField *wfwave;

@property (retain, nonatomic) IBOutlet UITextField *sensory;
@property (retain, nonatomic) IBOutlet UITextField *upper;
@property (retain, nonatomic) IBOutlet UITextField *lower;
@property (retain, nonatomic) IBOutlet UITextField *trunk;
@property (retain, nonatomic) IBOutlet UITextField *rl;
@property (retain, nonatomic) IBOutlet UITextField *test;
@property (retain, nonatomic) IBOutlet UITextField *evaluation;
@property (retain, nonatomic) IBOutlet UITextField *page3;

@property(retain, nonatomic)NSMutableDictionary *recorddict;
@property(retain, nonatomic)NSMutableDictionary *resultset;

@end
