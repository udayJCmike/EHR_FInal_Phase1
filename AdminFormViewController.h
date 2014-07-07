//
//  AdminFormViewController.h
//  Admin Form
//
//  Created by deemsys on 3/1/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface AdminFormViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>

{
    
    IBOutlet UITextField *other;
    
    IBOutlet UITextField *tofax;
    IBOutlet UITextField *toaddress;
    IBOutlet UITextField *clinicrepsign;
     NSMutableDictionary *recorddict;
    
    IBOutlet UIButton *cancel2;
    IBOutlet UIButton *reset2;
    
    IBOutlet UIButton *cancel;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15;
    MBProgressHUD *HUD;
    BOOL isConnect;
    int a;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UIButton *check1;
@property (retain, nonatomic) IBOutlet UIButton *check2;
@property (retain, nonatomic) IBOutlet UIButton *check3;
@property (retain, nonatomic) IBOutlet UIButton *check4;
@property (retain, nonatomic) IBOutlet UIButton *check5;
@property (retain, nonatomic) IBOutlet UIButton *check6;
@property (retain, nonatomic) IBOutlet UIButton *check7;
@property (retain, nonatomic) IBOutlet UIButton *check8;
@property (retain, nonatomic) IBOutlet UIButton *check9;
@property (retain, nonatomic) IBOutlet UIButton *check10;
@property (retain, nonatomic) IBOutlet UIButton *check11;
@property (retain, nonatomic) IBOutlet UIButton *check12;
- (IBAction)checkchange:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *save;
- (IBAction)save:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *toaddress;
@property (retain, nonatomic) IBOutlet UITextField *tofax;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property(nonatomic,retain)IBOutlet UIButton *cancel2;
@property(nonatomic,retain)IBOutlet UIButton *cancel;

@property (retain, nonatomic) IBOutlet UITextField *t1;
@property (retain, nonatomic) IBOutlet UITextField *t2;
@property (retain, nonatomic) IBOutlet UITextField *t3;
@property (retain, nonatomic) IBOutlet UITextField *t4;
@property (retain, nonatomic) IBOutlet UITextField *t5;

@end
