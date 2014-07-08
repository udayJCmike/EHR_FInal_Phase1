//
//  PerryFaxCoverViewController.h
//  EHR
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"

@interface PerryFaxCoverViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    IBOutlet UITextField *fax;
    IBOutlet UITextField *nubofpag;
    IBOutlet UITextField *to;
    IBOutlet UITextField *date;
    IBOutlet UITextField *from;
    IBOutlet UIButton *check1;
    IBOutlet UIButton *check2;
    IBOutlet UIButton *check3;
    IBOutlet UIButton *check4;
    IBOutlet UITextField *re;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9;
    MBProgressHUD *HUD;
    BOOL isConnect;
    int a;
    IBOutlet UITextView *msg;
    IBOutlet UITextField *doi;
 NSMutableDictionary *recorddict;
    IBOutlet UITextField *claim;
    
    IBOutlet UIButton *cancel;
    
    IBOutlet UIButton *cancel2;
    
    IBOutlet UIButton *reset;
    
    IBOutlet UIButton *reset2;
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
- (IBAction)cancel:(id)sender;
- (IBAction)submit:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *todaydate;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
- (IBAction)checkchange:(id)sender;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property(nonatomic,retain)IBOutlet UIButton *reset2;

@property(nonatomic,retain)IBOutlet UIButton *cancel2;

@end
