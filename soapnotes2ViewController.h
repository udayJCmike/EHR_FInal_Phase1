//
//  soapnotes2ViewController.h
//  soapnotes
//
//  Created by Admin on 10/05/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface soapnotes2ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource,TextFieldDatePickerDelegate,MBProgressHUDDelegate>

{
    NSArray *a1;
    NSArray *a2;
    NSArray *a3;
    NSArray *a4;
    int a;
      NSMutableDictionary *resultset;
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15;
     NSString *tempd1,*tempd2,*tempd3,*tempd4,*tempd5,*tempd6,*tempd7,*tempd8,*tempd9,*tempd10;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
}
@property(nonatomic,retain)NSMutableDictionary *resultset;
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property (strong, nonatomic) IBOutlet UITextField *t1;
@property (strong, nonatomic) IBOutlet UITextField *t2;
@property (strong, nonatomic) IBOutlet UITextField *t3;
@property (strong, nonatomic) IBOutlet UITextField *t4;
@property (strong, nonatomic) IBOutlet UITextField *t5;
@property (strong, nonatomic) IBOutlet UITextField *t6;
@property (strong, nonatomic) IBOutlet UITextField *t7;
@property (strong, nonatomic) IBOutlet UITextField *t8;
@property (strong, nonatomic) IBOutlet UITextField *t9;
@property (strong, nonatomic) IBOutlet UITextField *t10;
@property (strong, nonatomic) IBOutlet UITextField *t11;
@property (strong, nonatomic) IBOutlet UITextField *t12;
@property (strong, nonatomic) IBOutlet UITextField *t13;
@property (strong, nonatomic) IBOutlet UITextField *t14;
@property (strong, nonatomic) IBOutlet UITextField *t15;
@property (strong, nonatomic) IBOutlet UIPickerView *pick1;
@property (strong, nonatomic) IBOutlet UIPickerView *pick2;
@property (strong, nonatomic) IBOutlet UIPickerView *pick3;
@property (strong, nonatomic) IBOutlet UIPickerView *pick4;
@property (strong, nonatomic) IBOutlet UIPickerView *pick5;
@property (strong, nonatomic) IBOutlet UIPickerView *pick6;
@property (strong, nonatomic) IBOutlet UIPickerView *pick7;
@property (strong, nonatomic) IBOutlet UIPickerView *pick8;
@property (strong, nonatomic) IBOutlet UIPickerView *pick9;
@property (strong, nonatomic) IBOutlet UIPickerView *pick10;
@property (strong, nonatomic) IBOutlet UIPickerView *pick11;
@property (strong, nonatomic) IBOutlet UIPickerView *pick12;
@property (strong, nonatomic) IBOutlet UIPickerView *pick13;
@property (strong, nonatomic) IBOutlet UIPickerView *pick14;
@property (strong, nonatomic) IBOutlet UIPickerView *pick15;
@property (strong, nonatomic) IBOutlet UILabel *l1;
@property (strong, nonatomic) IBOutlet UIButton *b1;
@property (strong, nonatomic) IBOutlet UILabel *l2;
@property (strong, nonatomic) IBOutlet UIButton *b2;
@property (strong, nonatomic) IBOutlet UILabel *l3;
@property (strong, nonatomic) IBOutlet UIButton *b3;
@property (strong, nonatomic) IBOutlet UILabel *l4;
@property (strong, nonatomic) IBOutlet UIButton *b4;
@property (strong, nonatomic) IBOutlet UILabel *l5;
@property (strong, nonatomic) IBOutlet UIButton *b5;
@property (strong, nonatomic) IBOutlet UILabel *l6;
@property (strong, nonatomic) IBOutlet UIButton *b6;
@property (strong, nonatomic) IBOutlet UILabel *l7;
@property (strong, nonatomic) IBOutlet UIButton *b7;
@property (strong, nonatomic) IBOutlet UILabel *l8;
@property (strong, nonatomic) IBOutlet UIButton *b8;
@property (strong, nonatomic) IBOutlet UILabel *l9;
@property (strong, nonatomic) IBOutlet UIButton *b9;
@property (strong, nonatomic) IBOutlet UILabel *l10;
@property (strong, nonatomic) IBOutlet UIButton *b10;
@property (strong, nonatomic) IBOutlet UILabel *l11;
@property (strong, nonatomic) IBOutlet UIButton *b11;
@property (strong, nonatomic) IBOutlet UILabel *l12;
@property (strong, nonatomic) IBOutlet UIButton *b12;
@property (strong, nonatomic) IBOutlet UILabel *l13;
@property (strong, nonatomic) IBOutlet UIButton *b13;
@property (strong, nonatomic) IBOutlet UILabel *l14;
@property (strong, nonatomic) IBOutlet UIButton *b14;
@property (strong, nonatomic) IBOutlet UILabel *l15;
@property (strong, nonatomic) IBOutlet UIButton *b15;
@property (retain, nonatomic) IBOutlet UIScrollView *scrollview;
@property (retain, nonatomic) IBOutlet UITextField *signature;
@property (retain, nonatomic) IBOutlet UIButton *submit;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *deletefuct;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;
@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *reset2;


@end
