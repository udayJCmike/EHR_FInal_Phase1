//
//  KneeExamViewController2.h
//  EHR
//
//  Created by deemsys on 2/21/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface WristExamViewController2 : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    
    IBOutlet UITextField *first;
    
    IBOutlet UITextField *second;
    
    IBOutlet UITextField *three;
    
    IBOutlet UITextField *four;
    
    IBOutlet UITextField *five;
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UITextField *six;
    
    IBOutlet UIButton *deletefunc;
    IBOutlet UITextField *eight;
    IBOutlet UITextField *seven;
    IBOutlet UITextField *othertext;
    NSMutableDictionary *temp;
    NSMutableDictionary *recorddict;
    IBOutlet UITextField *signature;
}
@property(nonatomic,retain)NSMutableDictionary*resultset;

- (IBAction)save:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*temp;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UIButton *checkbut15;
@property (retain, nonatomic) IBOutlet UIButton *checkbut14;
@property (retain, nonatomic) IBOutlet UIButton *checkbut12;
@property (retain, nonatomic) IBOutlet UIButton *checkbut11;
@property (retain, nonatomic) IBOutlet UIButton *checkbut8;
@property (retain, nonatomic) IBOutlet UIButton *checkbut7;
@property (retain, nonatomic) IBOutlet UIButton *checkbut6;
@property (retain, nonatomic) IBOutlet UIButton *checkbut5;
@property (retain, nonatomic) IBOutlet UIButton *checkbut4;
@property (retain, nonatomic) IBOutlet UIButton *checkbut3;
@property (retain, nonatomic) IBOutlet UIButton *checkbut2;
@property (retain, nonatomic) IBOutlet UIButton *checkbut1;
- (IBAction)checked:(UIButton*)sender;
@property (retain, nonatomic) IBOutlet UIButton *deletefunc;
@property (retain, nonatomic) IBOutlet UIButton *checkbut9;
@property (retain, nonatomic) IBOutlet UIButton *checkbut10;
@property (retain, nonatomic) IBOutlet UIButton *checkbut13;

@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;
@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *reset2;
@property (retain, nonatomic) IBOutlet UIButton *submit;
@property (retain, nonatomic) IBOutlet UIButton *update;



@end
