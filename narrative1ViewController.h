//
//  narrative1ViewController.h
//  narrative
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"


@interface narrative1ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate,UIPrintInteractionControllerDelegate,TextFieldDatePickerDelegate>

{
    int a;
    NSMutableDictionary*recorddict;
    NSMutableDictionary*mutearray;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32;
    
    IBOutlet UITextField *flexionpain;
    
    IBOutlet UITextField *extensionpain;
    
    IBOutlet UITextField *rightlateralpain;
    IBOutlet UITextField *leftlateralpain;
    IBOutlet UITextField *rightrotationpain;
    
    IBOutlet UITextField *leftrotationpain;
    IBOutlet UITextField *flexionton;
    
    IBOutlet UITextField *extensionton;
    
    IBOutlet UITextField *rightlateralton;
    
    IBOutlet UITextField *leftlateralton;
    
    IBOutlet UITextField *rightrotationton;
    IBOutlet UITextField *leftrotationton;
    
    IBOutlet UITextField *flexpain;
    
    IBOutlet UITextField *exetpain;
    
    IBOutlet UITextField *rightlatpain;
    
    IBOutlet UITextField *leftlatpain;
    
    IBOutlet UITextField *rightrotpain;
    
    IBOutlet UITextField *leftrotpain;
    IBOutlet UITextField *flexton;
    IBOutlet UITextField *exetton;
    IBOutlet UITextField *rightlatton;
    
    IBOutlet UITextField *leftlatton;
    IBOutlet UITextField *rightrotton;
    IBOutlet UITextField *leftrotton;
    
    
    NSString *cerviclabel,*lrlabel,*lrtrapezius,*lranother;
    NSMutableDictionary *resultset;
}
@property(retain, nonatomic)NSMutableDictionary *resultset;
@property (retain, nonatomic) IBOutlet UITextField *flexionpain;
@property (retain, nonatomic) IBOutlet UITextField *extensionpain;
@property (retain, nonatomic) IBOutlet UITextField *rightlateralpain;
@property (retain, nonatomic) IBOutlet UITextField *leftlateralpain;
@property (retain, nonatomic) IBOutlet UITextField *rightrotationpain;
@property (retain, nonatomic) IBOutlet UITextField *leftrotationpain;

@property (retain, nonatomic) IBOutlet UITextField *flexionton;
@property (retain, nonatomic) IBOutlet UITextField *extensionton;
@property (retain, nonatomic) IBOutlet UITextField *rightlateralton;
@property (retain, nonatomic) IBOutlet UITextField *leftlateralton;
@property (retain, nonatomic) IBOutlet UITextField *rightrotationton;
@property (retain, nonatomic) IBOutlet UITextField *leftrotationton;
@property (retain, nonatomic) IBOutlet UITextField *flexpain;
@property (retain, nonatomic) IBOutlet UITextField *exetpain;
@property (retain, nonatomic) IBOutlet UITextField *rightlatpain;
@property (retain, nonatomic) IBOutlet UITextField *leftlatpain;
@property (retain, nonatomic) IBOutlet UITextField *rightrotpain;
@property (retain, nonatomic) IBOutlet UITextField *leftrotpain;
@property (retain, nonatomic) IBOutlet UITextField *flexton;
@property (retain, nonatomic) IBOutlet UITextField *exetton;
@property (retain, nonatomic) IBOutlet UITextField *tender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *lrtrapseg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *lrseganother;
@property (retain, nonatomic) IBOutlet UITextField *note;
@property (retain, nonatomic) IBOutlet UITextField *range;


@property (retain, nonatomic) IBOutlet UITextField *rightlatton;
@property (retain, nonatomic) IBOutlet UITextField *leftlatton;
@property (retain, nonatomic) IBOutlet UITextField *rightrotton;

@property (retain, nonatomic) IBOutlet UISegmentedControl *cervicseg;

@property (retain, nonatomic) IBOutlet UISegmentedControl *lrseg;

@property (retain, nonatomic) IBOutlet UITextField *leftrotton;

@property (retain, nonatomic) NSMutableDictionary *recorddict;

@property (retain, nonatomic) NSMutableDictionary *mutearray;

@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;


@end
