//
//  Workaccident2ViewController.h
//  EHR
//
//  Created by DeemsysInc on 10/11/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "JSON.h"
#import "TextFieldDatePicker.h"
@interface Workaccident2ViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>{
    NSMutableDictionary*recorddict,*resultset;
    IBOutlet UITextField *givespecificsyestext;
    IBOutlet UISwitch*switch1;
    IBOutlet UISwitch*switch2;
    IBOutlet UISwitch*switch3;
    IBOutlet UISwitch*switch4;
    IBOutlet UISwitch*switch5;
    IBOutlet UISwitch*switch6;
    IBOutlet UILabel*reslabel1;
    IBOutlet UILabel*reslabel2;
    IBOutlet UILabel*reslabel3;
    IBOutlet UILabel*reslabel4;
    IBOutlet UILabel*reslabel5;
    IBOutlet UILabel*reslabel6;
    IBOutlet UILabel*givespecificsyes;
    IBOutlet UISegmentedControl*seg;
    IBOutlet UILabel*seglabel;
    IBOutlet UITextField*segothertext;
    IBOutlet UITextField*noofemployessinjured;
    IBOutlet UITextField*changesmadeinjob;
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
    
    int seg1,a,c;
    NSMutableDictionary *temp;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@property (nonatomic, retain)NSMutableDictionary *staff;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)NSMutableDictionary*resultset;
@property(nonatomic,retain)UISegmentedControl *seg;
@property(nonatomic,retain)UILabel *seglabel;
@property(nonatomic,retain)UITextField*segothertext;
@property(nonatomic,retain)UISwitch*switch1;
@property(nonatomic,retain)UISwitch*switch2;
@property(nonatomic,retain)UISwitch*switch3;
@property(nonatomic,retain)UISwitch*switch4;
@property(nonatomic,retain)UISwitch*switch5;
@property(nonatomic,retain)UISwitch*switch6;
@property(nonatomic,retain)UILabel*reslabel1;
@property(nonatomic,retain)UILabel*reslabel2;
@property(nonatomic,retain)UILabel*reslabel3;
@property(nonatomic,retain)UILabel*reslabel4;
@property(nonatomic,retain)UILabel*reslabel5;
@property(nonatomic,retain)UILabel*reslabel6;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;

@property (retain, nonatomic) IBOutlet UIButton *cancel2;


-(IBAction)submit:(id)sender;
-(IBAction)clear:(id)sender;
-(IBAction)segselected:(id)sender;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@end
