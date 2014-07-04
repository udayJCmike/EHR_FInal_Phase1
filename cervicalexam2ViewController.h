//
//  cervicalexam2ViewController.h
//  cervicalexam
//
//  Created by DeemsysInc on 2/21/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface cervicalexam2ViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UIButton *neuro;
    NSMutableDictionary  *recorddict;
    IBOutlet UITextField *s1;
    IBOutlet UITextField*s2;
    IBOutlet UITextField*s3;
    IBOutlet UITextField*s4;
    IBOutlet UITextField*s5;
    IBOutlet UITextField*s6;
    IBOutlet UITextField*s7;
    IBOutlet UITextField*s8;
    IBOutlet UITextField*s9;
    IBOutlet UITextField*s10;
    IBOutlet UITextField *m1;
    IBOutlet UITextField *m2;
    IBOutlet UITextField*m3;
    IBOutlet UITextField*m4;
    IBOutlet UITextField*m5;
    IBOutlet UITextField*m6;
    IBOutlet UITextField*m7;
    IBOutlet UITextField*m8;
    IBOutlet UITextField*m9;
    IBOutlet UITextField*m10;
    IBOutlet UITextField *r1;
    IBOutlet UITextField*r2;
    IBOutlet UITextField*r3;
    IBOutlet UITextField*r4;
    IBOutlet UITextField*r5;
    IBOutlet UITextField*r6;
    IBOutlet UITextField*fdother;
    IBOutlet UIButton *fd1;
    IBOutlet UIButton*fd2;
    IBOutlet UIButton*fd3;
    IBOutlet UIButton*fd4;
    IBOutlet UIButton*fd5;
    IBOutlet UITextView *additional;
    IBOutlet UISegmentedControl *patientstatussseg;
    NSString *patientstatus;
    IBOutlet UITextField*d1;
    IBOutlet UITextField*d2;
    IBOutlet UITextField*d3;
    IBOutlet UITextField*d4;
    IBOutlet UITextField*d5;
    IBOutlet UITextField*d6;
    IBOutlet UITextField *plan1;
    IBOutlet UITextField*plan2;
    IBOutlet UITextField*planother;
    IBOutlet UITextField*sign;
    IBOutlet UIButton *p1;
    IBOutlet UIButton *p2;
    IBOutlet UIButton *p3;
    IBOutlet UIButton *p4;
    IBOutlet UIButton *p5;
    IBOutlet UIButton *p6;
    IBOutlet UIButton *p7;
    IBOutlet UIButton *p8;
    IBOutlet UIButton *p9;
    IBOutlet UIButton *p10;
    IBOutlet UIButton *p11;
    IBOutlet UIButton *p12;
    IBOutlet UIButton *p13;
    IBOutlet UIButton *p14;
    IBOutlet UIButton *p15;
    IBOutlet UIButton *cancel3;
    IBOutlet UIButton *reset3;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38;
    int a;
    NSMutableDictionary *resultset;
}
@property(nonatomic,retain) NSMutableDictionary *resultset;
@property(nonatomic,retain)   IBOutlet UITextView *additional;
@property(nonatomic,retain)UIButton *p1;
@property(nonatomic,retain)UIButton*p2;
@property(nonatomic,retain)UIButton*p3;
@property(nonatomic,retain)UIButton*p4;
@property(nonatomic,retain)UIButton*p5;
@property(nonatomic,retain)UIButton*p6;
@property(nonatomic,retain)UIButton*p7;
@property(nonatomic,retain)UIButton*p8;
@property(nonatomic,retain)UIButton*p9;
@property(nonatomic,retain)UIButton*p10;
@property(nonatomic,retain)UIButton*p11;
@property(nonatomic,retain)UIButton*p12;
@property(nonatomic,retain)UIButton*p13;
@property(nonatomic,retain)UIButton*p14;
@property(nonatomic,retain)UIButton*p15;
@property(nonatomic,retain)UIButton*fd1;
@property(nonatomic,retain)UIButton*fd2;
@property(nonatomic,retain)UIButton*fd3;
@property(nonatomic,retain)UIButton*fd4;
@property(nonatomic,retain)UIButton*fd5;
@property(nonatomic,retain)UIButton *neuro;
@property(nonatomic,retain)NSMutableDictionary *recorddict;

@property(nonatomic,retain)UISegmentedControl *patientstatussseg;
-(IBAction)p1selected:(id)sender;
-(IBAction)p2selected:(id)sender;
-(IBAction)p3selected:(id)sender;
-(IBAction)p4selected:(id)sender;
-(IBAction)p5selected:(id)sender;
-(IBAction)p6selected:(id)sender;
-(IBAction)p7selected:(id)sender;
-(IBAction)p8selected:(id)sender;
-(IBAction)p9selected:(id)sender;
-(IBAction)p10selected:(id)sender;
-(IBAction)p11selected:(id)sender;
-(IBAction)p12selected:(id)sender;
-(IBAction)p13selected:(id)sender;
-(IBAction)p14selected:(id)sender;
-(IBAction)p15selected:(id)sender;
-(IBAction)fd1selected:(id)sender;
-(IBAction)fd2selected:(id)sender;
-(IBAction)fd3selected:(id)sender;
-(IBAction)fd4selected:(id)sender;
-(IBAction)fd5selected:(id)sender;
-(IBAction)patientstatusselected:(id)sender;

-(IBAction)saveandcontinue:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *submit;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *deletefunc;
@property (retain, nonatomic) IBOutlet UIButton *reset1;

@property (retain, nonatomic) IBOutlet UIButton *cancel1;

@property (retain, nonatomic) IBOutlet UIButton *reset3;

@property (retain, nonatomic) IBOutlet UIButton *cancel3;

@end
