//
//  radiological3ViewController.h
//  radiological
//
//  Created by deemsys on 3/3/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface radiological3ViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    int a;
    NSMutableDictionary *recorddict;
    NSString *temp1;
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    IBOutlet UIButton *pos;
    IBOutlet UITextField *viewtext;
    IBOutlet UIButton *nor;
    IBOutlet UIButton *cancel;
    
    IBOutlet UIButton *reset;
    
    
    
    
}
@property (retain, nonatomic) IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *update;
- (IBAction)deletefunc:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *deletefuct;
- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *viewtext;
@property (retain, nonatomic)NSMutableDictionary *recorddict;
@property (retain, nonatomic) IBOutlet UIButton *nor;
@property (retain, nonatomic) IBOutlet UIButton *pos;

@end
