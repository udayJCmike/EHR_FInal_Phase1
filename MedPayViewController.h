//
//  MedPayViewController.h
//  MedPay
//
//  Created by deemsys on 3/1/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"


@interface MedPayViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    IBOutlet UITextField *patname;
    IBOutlet UITextView *addrs;
    IBOutlet UITextField *patattory;
    IBOutlet UITextField *reg;
    IBOutlet UITextField *dofacc;
    IBOutlet UITextField *dearname;
    IBOutlet UITextField *sincname;
    IBOutlet UITextField *physicianname;
    NSMutableDictionary *recorddict;
    
    
    
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSString *temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UILabel *mail;
- (IBAction)submit:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *save;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property (retain, nonatomic) IBOutlet UIButton *reset;

@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *deletefuc;
- (IBAction)deletefuc:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;

@end
