//
//  updateViewController.h
//  update
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//
#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"

@interface updateViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    IBOutlet UITextField *attorney1;
     IBOutlet UITextField *attorney2;
     IBOutlet UITextField *attorney3;
    IBOutlet UITextField *regards;
    IBOutlet UITextField *injury;
    IBOutlet UITextField *date;
    NSMutableDictionary *recorddict;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8;
    MBProgressHUD *HUD;
    BOOL isConnect;
    int a;
}
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;
@end
