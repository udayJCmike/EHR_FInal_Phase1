//
//  PerryCoverLetterViewController.h
//  EHR
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface PerryCoverLetterViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate,MBProgressHUDDelegate>

{
    IBOutlet UITextField *patname;

    IBOutlet UITextView *addrs;
    IBOutlet UITextField *patattory;
    IBOutlet UITextField *reg;
    IBOutlet UITextField *dofacc;
    IBOutlet UITextField *dearname;
    IBOutlet UITextField *sincname;
    IBOutlet UIButton *reset2;
    
    IBOutlet UIButton *cancel2;
   NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6;
    NSMutableDictionary *recorddict;
    MBProgressHUD *HUD;
    BOOL isConnect;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UILabel *mail;
- (IBAction)submit:(id)sender;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property(nonatomic,retain)IBOutlet UIButton *cancel2;                                                                                                                                                          
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;


@property (retain, nonatomic) IBOutlet UILabel *certified;
@property (retain, nonatomic) IBOutlet UIButton *cancel;

@end
