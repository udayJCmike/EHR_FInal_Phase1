//
//  HipKneeViewController2.h
//  HipKneeQuestionnaire
//
//  Created by deemsys on 3/4/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "TextFieldDatePicker.h"

@interface HipKneeViewController2 : UIViewController<TextFieldDatePickerDelegate,UITextFieldDelegate,MBProgressHUDDelegate>
{
    IBOutlet UIButton *radi6;
    IBOutlet UIButton *radi5;
    IBOutlet UIButton *radi4;
    IBOutlet UIButton *radi3;
    IBOutlet UIButton *radi2;
    IBOutlet UIButton *radi1;
    
    IBOutlet UIButton *cancel1;
    IBOutlet UIButton *cancel2;
    
    
    IBOutlet UITextField *date1;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    IBOutlet UITextField *secnumber;
    IBOutlet UITextField *date2;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
}
@property (nonatomic, retain)NSMutableDictionary *staff;
- (IBAction)rad6:(id)sender;
- (IBAction)rad5:(id)sender;
- (IBAction)rad4:(id)sender;
- (IBAction)rad2:(id)sender;
- (IBAction)rad1:(id)sender;
- (IBAction)rad3:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)NSMutableDictionary*resultset;
- (IBAction)next:(id)sender;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;

@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;


@end
