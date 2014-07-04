//
//  chiropractictheraphycenterViewController.h
//  chiropractictheraphycenter
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface chiropractictheraphycenterViewController : UIViewController<TextFieldDatePickerDelegate,UITextFieldDelegate,MBProgressHUDDelegate>

{
    int a;
    NSMutableDictionary *recorddict;

    
    IBOutlet UITextField *date2;
    IBOutlet UITextField *date1;
    IBOutlet UITextField *dear;

    IBOutlet UITextField *re;
    
    IBOutlet UITextField *date;
  
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10;
    MBProgressHUD *HUD;
    BOOL isConnect;

    IBOutlet UITextField *doi;
    
    IBOutlet UITextField *claim;
    IBOutlet UITextField *adjust;
    
    IBOutlet UIButton *cancel;
    
    IBOutlet UIButton *cancel2;
    
    IBOutlet UIButton *reset2;
    IBOutlet UIButton *reset;
    
}
@property (strong, nonatomic) IBOutlet UITextField *text1;
@property (retain, nonatomic) IBOutlet UITextField *re;
@property (retain, nonatomic) IBOutlet UITextField *claim;
@property (retain, nonatomic) IBOutlet UITextField *doi;
@property (retain, nonatomic) IBOutlet UITextField *adjust;
@property (retain, nonatomic) IBOutlet UITextField *date1;
@property (retain, nonatomic) IBOutlet UITextField *date2;

@property (retain, nonatomic) IBOutlet UITextField *date;
@property (retain, nonatomic) IBOutlet UITextField *dear;

@property (retain, nonatomic) IBOutlet UITextField *ssn;

@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset;
@property(nonatomic,retain)IBOutlet UIButton *reset2;

@property(nonatomic,retain)IBOutlet UIButton *cancel;
@property(nonatomic,retain)IBOutlet UIButton *cancel2;







@property(retain, nonatomic)NSMutableDictionary *recorddict;
@end
