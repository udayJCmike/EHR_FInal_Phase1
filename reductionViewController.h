//
//  reductionViewController.h
//  reduction
//
//  Created by Admin on 27/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"


@interface reductionViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    int suc;
    IBOutlet UITextField *attorney;
    IBOutlet UITextView *address;
    IBOutlet UITextField *regarding;
    IBOutlet UITextField *dateofacci;
    IBOutlet UITextField *claim;
    IBOutlet UITextField *date;
    IBOutlet UITextField *name;
    NSMutableDictionary *recorddict;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8;
    IBOutlet UITextField *sign;
 
    MBProgressHUD *HUD;
    BOOL isConnect;
    int a;
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;
@end
