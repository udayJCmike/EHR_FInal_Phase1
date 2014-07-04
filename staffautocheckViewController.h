//
//  staffautocheckViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
//#import "/usr/include/sqlite3.h"
#import "MBProgressHUD.h"
@interface staffautocheckViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UITextFieldDelegate,UIScrollViewDelegate>
{
    NSMutableDictionary * recorddict;
    NSMutableArray * selectforms;
    
    
    IBOutlet UITextField * patientname;
    IBOutlet UITextField * insuramceattroney;
    IBOutlet UITextField * damageamount;
    IBOutlet UITextField * faultinsurance;
    IBOutlet UITextField * medpay;
    IBOutlet UITextField * botherattroney;
    IBOutlet UITextField * protectionreceived;
    
    IBOutlet UITextField * billeddate;
    IBOutlet UITextField * remdate;
    IBOutlet UITextField *patinfo;
    
    NSString *temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp34,*temp31,*temp32,*temp33;
    
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSMutableArray *buttonname;
    NSMutableArray *table_name;
}
@property (retain, nonatomic) IBOutlet UIButton *save;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property (retain, nonatomic) IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *deletefuc;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIImageView *imageview;


@property (retain, nonatomic) IBOutlet UIScrollView *scrollview;

@property (retain, nonatomic) IBOutlet UILabel *lab1;
@property (retain, nonatomic) IBOutlet UILabel *lab2;
@property (retain, nonatomic) IBOutlet UILabel *lab3;
@property (retain, nonatomic) IBOutlet UILabel *lab4;
@property (retain, nonatomic) IBOutlet UILabel *lab5;
@property (retain, nonatomic) IBOutlet UILabel *lab6;
@property (retain, nonatomic) IBOutlet UILabel *lab7;
@property (retain, nonatomic) IBOutlet UILabel *lab8;
@property (retain, nonatomic) IBOutlet UILabel *lab9;

@property (retain, nonatomic) IBOutlet UITextField * patientname;
@property (retain, nonatomic) IBOutlet UITextField * insuramceattroney;
@property (retain, nonatomic) IBOutlet UITextField * damageamount;
@property (retain, nonatomic) IBOutlet UITextField * faultinsurance;
@property (retain, nonatomic) IBOutlet UITextField * medpay;
@property (retain, nonatomic) IBOutlet UITextField * botherattroney;
@property (retain, nonatomic) IBOutlet UITextField * protectionreceived;

@property (retain, nonatomic) IBOutlet UITextField * billeddate;
@property (retain, nonatomic) IBOutlet UITextField * remdate;


- (IBAction)cancel:(id)sender;
- (IBAction)deletefunc:(id)sender;

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
-(IBAction)checkboxSelected:(UIButton*)sender;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
@property(nonatomic,retain)NSMutableDictionary *staff;
@property(nonatomic,retain)NSMutableArray * selectforms;

@end
