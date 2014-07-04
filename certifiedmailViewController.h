//
//  certifiedmailViewController.h
//  certifiedmail
//
//  Created by deemsys on 2/25/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"

@interface certifiedmailViewController :UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate>

{
    int a;
    
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9;
    IBOutlet UITextField *insurancecompany;
    
    IBOutlet UITextView *insadd;
    IBOutlet UITextField *date;
    
    IBOutlet UITextView *attadd;
    IBOutlet UITextField *attorney;
    
    
    IBOutlet UITextField *patientname;
    IBOutlet UITextView *patadd;
    IBOutlet UITextField *amt1;
    IBOutlet UITextField *amt2;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSString *temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30;
    
    IBOutlet UITextField *sign;
    IBOutlet UITextView *sample;
    
}
@property (retain, nonatomic) IBOutlet UIButton *save;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property (retain, nonatomic) IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *deletefuc;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *reset1;

- (IBAction)reset:(id)sender;

- (IBAction)cancel:(id)sender;

- (IBAction)save:(id)sender;

- (IBAction)deletefuc:(id)sender;






@property(retain, nonatomic)NSMutableDictionary *recorddict;
@property (strong, nonatomic) IBOutlet UITextField *insurancecompany;
@property (strong, nonatomic) IBOutlet UITextView *insadd;

@property (strong, nonatomic) IBOutlet UITextField *attorney;

@property (strong, nonatomic) IBOutlet UITextView *attadd;
@property (strong, nonatomic) IBOutlet UITextField *patientname;
@property (strong, nonatomic) IBOutlet UITextView *patadd;
@property (strong, nonatomic) IBOutlet UITextField *amt1;
@property (retain, nonatomic) IBOutlet UITextField *sign;


@property (strong, nonatomic) IBOutlet UITextField *amt2;
@property (strong, nonatomic) IBOutlet UITextField *date;


@end
