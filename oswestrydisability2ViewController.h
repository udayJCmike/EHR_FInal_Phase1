//
//  oswestrydisability4ViewController.h
//  oswestrydisability
//
//  Created by DeemsysInc on 3/8/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "DatePickerViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface oswestrydisability2ViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate>
{
    int c;
    int aa,bb,result,cc;
    float exe;
    
    NSString *val10,*seg1val,*seg2val,*seg3val,*seg4val;
    NSMutableDictionary*recorddict,*resultset;
    
    IBOutlet UIButton *cancel;
}
@property (retain, nonatomic) IBOutlet UITextField *date;
@property (retain, nonatomic) IBOutlet UIButton *sec101;
@property (retain, nonatomic) IBOutlet UIButton *sec102;
@property (retain, nonatomic) IBOutlet UIButton *sec103;
@property (retain, nonatomic) IBOutlet UIButton *sec104;
@property (retain, nonatomic) IBOutlet UIButton *sec105;
@property (retain, nonatomic) IBOutlet UIButton *sec106;
@property (retain, nonatomic) IBOutlet UITextField *name;
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property(nonatomic,retain)NSMutableDictionary *resultset;
@property (retain, nonatomic) IBOutlet UISlider *rightslider;
@property (retain, nonatomic) IBOutlet UISlider *worseslider;
@property (retain, nonatomic) IBOutlet UILabel *rightlabel;
@property (retain, nonatomic) IBOutlet UILabel *worselabel;
@property (retain, nonatomic) IBOutlet UITextView *comments;
@property (retain, nonatomic) IBOutlet UIButton *workmodbut;
@property (retain, nonatomic) IBOutlet UITextField *workmodtv;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg1;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg3;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg4;
@property (retain, nonatomic) IBOutlet UILabel *score;
@property (retain, nonatomic) IBOutlet UIButton *cancel;

@property (retain, nonatomic) IBOutlet UILabel *label1;
@property (retain, nonatomic) IBOutlet UILabel *label2;
@property (retain, nonatomic) IBOutlet UILabel *label3;
@property (retain, nonatomic) IBOutlet UILabel *label4;
@property (retain, nonatomic) IBOutlet UILabel *label5;
@property (retain, nonatomic) IBOutlet UILabel *label6;
@property (retain, nonatomic) IBOutlet UILabel *label7;
@property (retain, nonatomic) IBOutlet UIImageView *lineImage;
@property (retain, nonatomic) IBOutlet UILabel *label8;
@property (retain, nonatomic) IBOutlet UILabel *label9;
@property (retain, nonatomic) IBOutlet UILabel *label10;
@property (retain, nonatomic) IBOutlet UILabel *label11;



@end
