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

@interface KneeExamViewController2 : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    
    IBOutlet UITextField *first;
    
    IBOutlet UITextField *second;
    
    IBOutlet UITextField *three;
    
    IBOutlet UITextField *four;
    
    IBOutlet UITextField *five;
    
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel;
    
    IBOutlet UIButton *reset1;
    
    IBOutlet UIButton *reset;
    
    IBOutlet UIButton *save;
    IBOutlet UITextField *six;
    
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UITextField *eight;
    IBOutlet UITextField *seven;
    IBOutlet UITextField *othertext;
    NSMutableDictionary *temp;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
    IBOutlet UITextField *signature;
}
@property (retain, nonatomic) IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *save;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *deleteform;
- (IBAction)deleteform:(id)sender;
- (IBAction)reset:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *update;
- (IBAction)cancel:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
- (IBAction)save:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*temp;
@property(nonatomic,retain)NSMutableDictionary*resultset;
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

@property (retain, nonatomic) IBOutlet UIButton *checkbut9;
@property (retain, nonatomic) IBOutlet UIButton *checkbut10;
@property (retain, nonatomic) IBOutlet UIButton *checkbut13;
@end
