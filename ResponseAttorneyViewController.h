//
//  ResponseAttorneyViewController.h
//  EHR
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"

@interface ResponseAttorneyViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate,MBProgressHUDDelegate>
{
    IBOutlet UITextField *patname;
  
    IBOutlet UITextView *addrs;
    IBOutlet UITextField *patattory;
    IBOutlet UITextField *reg;
    IBOutlet UITextField *dofacc;
    IBOutlet UITextField *dearname;
    IBOutlet UITextField *sincname;
    IBOutlet UITextField *physicianname;
    
    IBOutlet UIButton *reset;
    
    IBOutlet UIButton *reset2;
    
    IBOutlet UIButton *cancel;
    
    IBOutlet UIButton *cancel2;
    
    NSMutableDictionary *recorddict;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9;
    MBProgressHUD *HUD;
    BOOL isConnect;
    int a;
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UILabel *mail;
- (IBAction)submit:(id)sender;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;
@property (retain, nonatomic) IBOutlet UIButton *reset2;


@end
