//
//  ROMRAViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface ROMRAViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    IBOutlet UITextField * name;
    IBOutlet UITextField * doc;
    IBOutlet UITextField * sign;
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
    
    NSMutableDictionary * recorddict;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *reset2;
    IBOutlet UIButton *reset1;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7;
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@property (nonatomic, retain)NSMutableDictionary *staff;
-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;

@property(nonatomic,retain) NSMutableDictionary * recorddict;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;

@property (retain, nonatomic) IBOutlet UIButton *cancel2;

@end
