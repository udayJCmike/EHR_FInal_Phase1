//
//  cervicalexamViewController.h
//  cervicalexam
//
//  Created by DeemsysInc on 2/20/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface cervicalexamViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    NSMutableDictionary*recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53;
    IBOutlet UITextField * patname;
    int a;
    IBOutlet UITextField * date;
    IBOutlet UITextField * muscle;
    IBOutlet UITextField * swell;
    IBOutlet UITextField * forward;
    IBOutlet UITextField * round;
    IBOutlet UITextField * ao;
    IBOutlet UITextField *other;
    IBOutlet UITextField * f1;
    IBOutlet UITextField * f2;
    IBOutlet UITextField * f3;
    IBOutlet UITextField * f4;
    IBOutlet UITextField * f5;
    IBOutlet UITextField * f6;
    IBOutlet UITextField * s11;
    IBOutlet UITextField * s12;
    IBOutlet UITextField * s13;
    IBOutlet UITextField * s21;
    IBOutlet UITextField * s22;
    IBOutlet UITextField * s23;
    IBOutlet UITextField * s31;
    IBOutlet UITextField * s32;
    IBOutlet UITextField * s33;
    IBOutlet UITextField * s41;
    IBOutlet UITextField * s42;
    IBOutlet UITextField * s43;
    IBOutlet UITextField * s51;
    IBOutlet UITextField * s52;
    IBOutlet UITextField * s53;
    IBOutlet UITextField * ot11;
    IBOutlet UITextField * ot12;
    IBOutlet UITextField * ot21;
    IBOutlet UITextField * ot22;
    IBOutlet UITextField * ot31;
    IBOutlet UITextField * ot32;
    IBOutlet UITextField * ot41;
    IBOutlet UITextField * ot42;
    IBOutlet UITextField * ot51;
    IBOutlet UITextField * ot52;
    IBOutlet UISegmentedControl*aoseg;
    IBOutlet UISegmentedControl*roundseg;
    IBOutlet UISegmentedControl*p1seg;
    NSString *  p1val;
    NSString*  p2val;
    NSString * p3val;
    NSString *p4val;
    NSString *p5val;
    NSString *p6val;
    NSString *p7val;
    NSString *p8val;
    NSString *p9val;
    NSString *allsoft,*func,*sublax,*ortho;
    NSString*roundval;
    NSString*aoval;
    IBOutlet UISegmentedControl*p2seg;
    IBOutlet UISegmentedControl*p3seg;
    IBOutlet UISegmentedControl*p4seg;
    IBOutlet UISegmentedControl*p5seg;
    IBOutlet UISegmentedControl*p6seg;
    IBOutlet UISegmentedControl*p7seg;
    IBOutlet UISegmentedControl*p8seg;
    IBOutlet UISegmentedControl*p9seg;
    NSMutableDictionary *resultset;
    IBOutlet UIButton*c1;
    IBOutlet UIButton*c2;
    IBOutlet UIButton*c3;
    IBOutlet UIButton*c4;
    MBProgressHUD *HUD;
    BOOL isConnect;
}
@property(strong, nonatomic) NSMutableDictionary *resultset;
@property(nonatomic,retain)UISegmentedControl*aoseg;
@property(nonatomic,retain)UISegmentedControl*roundseg;
@property(nonatomic,retain)UISegmentedControl*p1seg;
@property(nonatomic,retain)UISegmentedControl*p2seg;
@property(nonatomic,retain)UISegmentedControl*p3seg;
@property(nonatomic,retain)UISegmentedControl*p4seg;
@property(nonatomic,retain)UISegmentedControl*p5seg;
@property(nonatomic,retain)UISegmentedControl*p6seg;
@property(nonatomic,retain)UISegmentedControl*p7seg;
@property(nonatomic,retain)UISegmentedControl*p8seg;
@property(nonatomic,retain)UISegmentedControl*p9seg;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)UIButton *c1;
@property(nonatomic,retain)UIButton *c2;
@property(nonatomic,retain)UIButton *c3;
@property(nonatomic,retain)UIButton *c4;
@property(nonatomic,retain)IBOutlet UITextField * patname;
@property(nonatomic,retain)IBOutlet UITextField * date;
@property(nonatomic,retain)IBOutlet UITextField * muscle;
@property(nonatomic,retain)IBOutlet UITextField * swell;
@property(nonatomic,retain)IBOutlet UITextField * forward;
@property(nonatomic,retain)NSString * roundval;
@property(nonatomic,retain)NSString* aoval;
@property(nonatomic,retain)NSString*p1val;
@property(nonatomic,retain)NSString*p2val;
@property(nonatomic,retain)NSString*p3val;
@property(nonatomic,retain)NSString*p4val;
@property(nonatomic,retain)NSString*p5val;
@property(nonatomic,retain)NSString*p6val;
@property(nonatomic,retain)NSString*p7val;
@property(nonatomic,retain)NSString*p8val;
@property(nonatomic,retain)NSString*p9val;

@property(nonatomic,retain)IBOutlet UITextField *other;
-(IBAction)saveandcontinue:(id)sender;
-(IBAction)p1segselected:(id)sender;
-(IBAction)p2segselected:(id)sender;
-(IBAction)p3segselected:(id)sender;
-(IBAction)p4segselected:(id)sender;
-(IBAction)p5segselected:(id)sender;
-(IBAction)p6segselected:(id)sender;
-(IBAction)p7segselected:(id)sender;
-(IBAction)p8segselected:(id)sender;
-(IBAction)p9segselected:(id)sender;

-(IBAction)aosegselected:(id)sender;
-(IBAction)roundsegselected:(id)sender;

@end
