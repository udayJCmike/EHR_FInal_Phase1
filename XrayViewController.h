//
//  XrayViewController.h
//  Xray
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"


@interface XrayViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    IBOutlet UITextField *name;
    IBOutlet UITextField *borrow;
    IBOutlet UITextField *due;
    IBOutlet UITextField *sign;
    IBOutlet UITextField *date;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5;
    NSMutableDictionary *recorddict;
    int a;
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSString *temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30;
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
- (IBAction)reset:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *deletefuc;
@property (retain, nonatomic) IBOutlet UIButton *save;
- (IBAction)save:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *reset;
- (IBAction)cancel:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *update;

@property (retain, nonatomic) IBOutlet UIButton *reset1;
- (IBAction)deletefuc:(id)sender;

@property (nonatomic,retain) NSMutableDictionary *recorddict;
@end
