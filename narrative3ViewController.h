//
//  narrative3ViewController.h
//  narrative
//
//  Created by deemsys on 2/28/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface narrative3ViewController : UIViewController<UITextFieldDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    int a;
    NSMutableDictionary*recorddict;
    NSMutableDictionary*mutearray;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21;
    
    
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    IBOutlet UITextField *i1;
    
    IBOutlet UITextField *i2;
    
    IBOutlet UITextField *de3;
    IBOutlet UITextField *i3;
    IBOutlet UITextField *de1;
    IBOutlet UITextField *de2;
    
    IBOutlet UITextField *i4;
    
    IBOutlet UITextField *de4;
    IBOutlet UITextField *date1;
    
    IBOutlet UITextField *date2;
    
    
    NSString*mr,*good;
    IBOutlet UITextField *name;
    
    IBOutlet UISegmentedControl *goodseg;
    IBOutlet UISegmentedControl *meseg;
    
    IBOutlet UITextField *hope;
    
    NSMutableDictionary *resultset;
    
    IBOutlet UIButton *reset;
    
    IBOutlet UIButton *reset2;
    
    IBOutlet UIButton *cancel;
    
    IBOutlet UIButton *cancel2;
}
@property(retain, nonatomic)NSMutableDictionary *resultset;
@property(retain, nonatomic)NSMutableDictionary *mutearray;

@property (retain, nonatomic) IBOutlet UITextField *i1;
@property (retain, nonatomic) IBOutlet UITextField *i2;
@property (retain, nonatomic) IBOutlet UITextField *i3;
@property (retain, nonatomic) IBOutlet UITextField *de1;

@property (retain, nonatomic) IBOutlet UITextField *de2;
@property (retain, nonatomic) IBOutlet UITextField *de3;

@property (retain, nonatomic) IBOutlet UITextField *date1;

@property (retain, nonatomic) IBOutlet UITextField *date2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *mrseg;
@property (retain, nonatomic) IBOutlet UITextField *hope;

@property (retain, nonatomic) IBOutlet UISegmentedControl *goodseg;



@property (retain, nonatomic)NSMutableDictionary *recorddict;

@property (retain, nonatomic) IBOutlet UILabel *he1;

@property (retain, nonatomic) IBOutlet UILabel *his1;

@property (retain, nonatomic) IBOutlet UILabel *he2;

@property (retain, nonatomic) IBOutlet UILabel *his2;

@property (retain, nonatomic) IBOutlet UILabel *his3;


@property (retain, nonatomic) IBOutlet UILabel *his4;

@property (retain, nonatomic) IBOutlet UILabel *his5;
@property (retain, nonatomic) IBOutlet UILabel *his6;

@property (retain, nonatomic) IBOutlet UILabel *he3;


@property (retain, nonatomic) IBOutlet UITextField *name;

@property (retain, nonatomic) IBOutlet UILabel *mr1;
@property (retain, nonatomic) IBOutlet UILabel *name1;
@property (retain, nonatomic) IBOutlet UILabel *mr2;
@property (retain, nonatomic) IBOutlet UILabel *name2;
@property (retain, nonatomic) IBOutlet UILabel *name3;
@property (retain, nonatomic) IBOutlet UILabel *mr3;

@property (retain, nonatomic) IBOutlet UIButton *submit;

@property (retain, nonatomic) IBOutlet UIButton *deleteform;

@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *cancel;

@property (retain, nonatomic) IBOutlet UIButton *cancel2;

@property (retain, nonatomic) IBOutlet UIButton *reset;

@property (retain, nonatomic) IBOutlet UIButton *reset2;


@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;



@end
