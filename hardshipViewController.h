//
//  hardshipViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "/usr/include/sqlite3.h"
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "WelcomeViewController.h"
@interface hardshipViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    IBOutlet UITextField * date;
    IBOutlet UITextField * name;
    IBOutlet UITextField * sign;
    IBOutlet UIButton *reset1;
    IBOutlet UITextField * witness;
    NSMutableDictionary * recorddict;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *reset2;
    NSString *temp,*temp1,*temp2,*temp3;
    IBOutlet UIButton *cancel1;
    IBOutlet UIButton *cancel2;
    //  sqlite3 * ehrdbase;
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@property (nonatomic, retain)NSMutableDictionary *staff;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property(nonatomic,retain)IBOutlet UIButton *cancel1;
@property(nonatomic,retain)IBOutlet UIButton *cancel2;

@end
