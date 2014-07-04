//
//  NoticeOfAssignmentViewController.h
//  MedPay
//
//  Created by deemsys on 3/1/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//
#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface NoticeOfAssignmentViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UITextField *insname;
    IBOutlet UITextField *patname;
    IBOutlet UITextView *addrs;
    IBOutlet UITextView *addrs1;
    IBOutlet UITextField *patattory;
    IBOutlet UITextField *reg;
    IBOutlet UITextField *dofacc;
    IBOutlet UITextField *todaydate;
    IBOutlet UITextField *dearname;
    
    IBOutlet UIButton *cancel;
    
    IBOutlet UIButton *reset2;
    
    IBOutlet UIButton *cancel2;
    IBOutlet UITextField *writingby;
    NSMutableDictionary *recorddict;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UILabel *mail;
- (IBAction)submit:(id)sender;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset;
@property(nonatomic,retain)IBOutlet UIButton *reset2;

@property(nonatomic,retain)IBOutlet UIButton *cancel;

@property(nonatomic,retain)IBOutlet UIButton *cancel2;

@end
