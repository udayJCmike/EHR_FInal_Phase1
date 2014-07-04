//
//  narrativereport4ViewController.h
//  EHR
//
//  Created by DeemsysInc on 17/05/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface narrativereport4ViewController : UIViewController<UITextFieldDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPickerViewDataSource,UIPickerViewDelegate>
{
    int a;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *mutearray;
    NSMutableDictionary *resultset;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30;
    
    IBOutlet UISegmentedControl *s2;
    IBOutlet UILabel *patname1;
    
    IBOutlet UILabel *physical2;
    IBOutlet UISegmentedControl *s1;
    IBOutlet UISegmentedControl *s3;
    IBOutlet UISegmentedControl *s4;
    IBOutlet UISegmentedControl *s5;
    
    IBOutlet UITextField *textf1;
    
    IBOutlet UITextField *textf2;
    
    NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6;
    //,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UITextField *text8;
    IBOutlet UITextField *text9;
    IBOutlet UITextField *text10;
    NSString *s1l;
    NSString *s2l;
    NSString *s3l;
    NSString *s4l;
    NSString *s5l;
    NSString *s6l;
    NSString *s7l;
    NSString *s8l;
    NSString *s9l;
    NSString *s10l;
    NSString *indexresult;
    NSString *gender;
    NSString *wasnotlabel;
    NSString *whitelabel,*genderlabel,*nourishedlabel,*fairlabel,*normallabel,*poorlabel,*pathollabel,*cervicanotherlabel;
    IBOutlet UILabel *hypolabel;
    IBOutlet UIButton *hypobut;
    IBOutlet UIPickerView *hypo;
    IBOutlet UITextField *alleviate;
    NSArray *hypoarray;
    NSString *headval;
}
@property (retain, nonatomic) IBOutlet UITextField *age;
@property (retain, nonatomic) IBOutlet UITextField *heightval;
@property (retain, nonatomic) IBOutlet UITextField *lb;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s1;
@property (retain, nonatomic) IBOutlet UILabel *narra;
@property (retain, nonatomic) IBOutlet UILabel *gen1;
@property (retain, nonatomic) IBOutlet UILabel *gen2;
@property (retain, nonatomic) IBOutlet UILabel *gen6;
@property (retain, nonatomic) IBOutlet UILabel *gen7;
@property (retain, nonatomic) IBOutlet UISegmentedControl *wasnot;
@property (retain, nonatomic) IBOutlet UILabel *his8;
@property (retain, nonatomic) IBOutlet UILabel *his9;
@property (retain, nonatomic) IBOutlet UILabel *his5;

@property (retain, nonatomic) IBOutlet UILabel *his7;

@property (retain, nonatomic) IBOutlet UISegmentedControl *s2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg8;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg9;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg10;
@property (retain, nonatomic) IBOutlet UILabel *gen8;

@property (retain, nonatomic) IBOutlet UILabel *hypolabel;
@property (retain, nonatomic) IBOutlet UIButton *hypobut;
@property (retain, nonatomic) IBOutlet UIPickerView *hypo;

@property (retain, nonatomic) IBOutlet UILabel *patname4;

@property (retain, nonatomic) IBOutlet UILabel *physical;
@property (retain, nonatomic) IBOutlet UILabel *physical2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg7;
@property(retain, nonatomic)NSMutableDictionary *mutearray;
@property(retain, nonatomic)NSMutableDictionary *resultset;
@property(retain, nonatomic)NSMutableDictionary *recorddict;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg6;
@property (retain, nonatomic) IBOutlet UISegmentedControl *headacheseg;


@property (strong, nonatomic) IBOutlet UITextField *text8;
@property (retain, nonatomic) IBOutlet UILabel *precom;

@property (strong, nonatomic) IBOutlet UITextField *text9;
@property (strong, nonatomic) IBOutlet UITextField *text10;
@property (retain, nonatomic) IBOutlet UISegmentedControl *fairseg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *poorseg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *normalseg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *pathoseg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *cervicsegg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *genderseg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *nourishedseg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *whiteseg;


@end


