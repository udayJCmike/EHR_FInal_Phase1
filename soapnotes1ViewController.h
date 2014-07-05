//
//  soapnotes1ViewController.h
//  soapnotes
//
//  Created by Admin on 10/05/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"



@interface soapnotes1ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource,TextFieldDatePickerDelegate,UITextFieldDelegate,UIScrollViewDelegate>
{
    int a;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
    NSArray *a1;
    NSArray *a2;
    NSArray *a3;
    NSArray *a4;
    int x,y;
    int texttag,buttontag;
    int buttonx,buttony;
    int inc;
    NSMutableArray *diagnosisresult;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10;
    NSString *tempd1,*tempd2,*tempd3,*tempd4,*tempd5,*tempd6,*tempd7,*tempd8,*tempd9,*tempd10;
}
@property(nonatomic,assign)UITextField *activeTextField;
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
@property (strong, nonatomic) IBOutlet UISlider *painscale;
@property (strong, nonatomic) IBOutlet UILabel *painval;
@property (strong, nonatomic) IBOutlet UITextField *d1;
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
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property(nonatomic,retain)NSMutableDictionary *resultset;
@property (retain, nonatomic) IBOutlet UIScrollView *scrollview;
@property (retain, nonatomic) IBOutlet UIButton *adddiag;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property (retain, nonatomic) IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *next;
@property (retain, nonatomic) IBOutlet UITextField *other;
@property (retain, nonatomic) IBOutlet UIImageView *imageview;

@property (retain, nonatomic) IBOutlet UIImageView *line1;
@property (retain, nonatomic) IBOutlet UIImageView *line2;
@property (retain, nonatomic) IBOutlet UIImageView *line3;

@end
