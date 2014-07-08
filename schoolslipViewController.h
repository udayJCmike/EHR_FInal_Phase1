//
//  schoolslipViewController.h
//  schoolslip
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"


@interface schoolslipViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    
    
    IBOutlet UITextField *text1;
    
    IBOutlet UITextField *text2;
    
    IBOutlet UITextField *text3;
    
    IBOutlet UITextField *text4;
    
    
    IBOutlet UITextField *text5;
    
    
    IBOutlet UITextField *text6;
    
    
    IBOutlet UITextField *text7;
    
    IBOutlet UITextField *text8;
    
    IBOutlet UITextField *text9;
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    
    IBOutlet UITextField *text10;
    IBOutlet UITextField *date;
    IBOutlet UITextField *name;
    IBOutlet UITextField *excuse;
    IBOutlet UITextField *confine;
    IBOutlet UIButton *b1;
    IBOutlet UIButton *b2;
    IBOutlet UIButton *b3;
    IBOutlet UIButton *b4;
    IBOutlet UIButton *b5;
    IBOutlet UIButton *b6;
    IBOutlet UIButton *b7;
    IBOutlet UIButton *b8;
    IBOutlet UIButton *b9;
    IBOutlet UIButton *b10;
    int a;
    IBOutlet UITextField *from;
    IBOutlet UITextField *to;
    IBOutlet UITextField *ret;
    IBOutlet UITextField *ondate;
    IBOutlet UITextField *diagn;
    
    IBOutlet UISegmentedControl *seg1;
    IBOutlet UISegmentedControl *seg2;
    IBOutlet UISegmentedControl *seg3;
    IBOutlet UISegmentedControl *seg4;
    IBOutlet UISegmentedControl *seg5;
    IBOutlet UISegmentedControl *seg6;
    IBOutlet UISegmentedControl *seg7;
    NSString *dri;
    NSString*beexc;
    NSString *becon;
    NSString *max;
    NSString *low;
    NSString *sit;
    NSString *stan;
    
    NSString *rep;
    NSString *cau;
    NSString*light;
    NSString *excused;
    NSString *confined;
    NSString *maximum;
    NSString *lo;
    NSString *sitting;
    NSString *standing;
    NSString *retu;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9;
    NSMutableDictionary *recorddict;
    
    
    NSString *temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp34,*temp31,*temp32,*temp33;
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@property (retain, nonatomic) IBOutlet UIButton *reset;

@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;

@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property (retain, nonatomic) IBOutlet UIButton *save;

@property (retain, nonatomic) IBOutlet UIButton *deletefuc;
- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;
- (IBAction)deletefuc:(id)sender;


@property(nonatomic,retain)NSMutableDictionary *recorddict;
@end
