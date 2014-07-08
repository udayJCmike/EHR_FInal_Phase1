//
//  ProtectPatientAttorneyViewController.h
//  EHR
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface ProtectPatientAttorneyViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    IBOutlet UITextField *clinicname;
    
    
    IBOutlet UITextView *addrs;
    IBOutlet UITextField *patattory;
    IBOutlet UITextField *myclient;
    IBOutlet UITextField *dofacc;
    IBOutlet UITextField *dearname;
    IBOutlet UITextField *sincname;
    IBOutlet UITextField *date;
    
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSMutableDictionary *recorddict;
    NSString *temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30;
}
- (IBAction)submit:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UIButton *save;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property (retain, nonatomic) IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *deletefuc;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *reset1;
- (IBAction)reset:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)deletefuc:(id)sender;
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;

@end
