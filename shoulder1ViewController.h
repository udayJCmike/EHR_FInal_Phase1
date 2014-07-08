
//  shoulder1ViewController.h
//  shoulder
//
//  Created by deemsys on 2/25/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"

@interface shoulder1ViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate,MBProgressHUDDelegate>

{
    int a;
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp52;
    NSString *otherlabel;
    IBOutlet UITextField *c5left;
    IBOutlet UITextField *c5right;
    IBOutlet UITextField *c6left;
    
    IBOutlet UITextField *othertext1;
    IBOutlet UITextField *othertext;
    IBOutlet UITextField *c6right;
    
    IBOutlet UITextField *c7left;
    IBOutlet UITextField *c7right;
    NSMutableDictionary *resultset;
    IBOutlet UIButton *walking;
    IBOutlet UIButton *standing;
    IBOutlet UIButton *stairs;
    
    IBOutlet UIButton *other;
    
    IBOutlet UISegmentedControl *patientstatus;
    IBOutlet UITextField *d1;
    IBOutlet UITextField *d2;
    IBOutlet UITextField *d3;
    IBOutlet UITextField *d4;
    IBOutlet UITextField *d5;
    IBOutlet UITextField *plantime;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UITextField *planweek;
    IBOutlet UIButton *spinal;
    
    IBOutlet UIButton *chiropractic;
    
    IBOutlet UIButton *physical;
    IBOutlet UIButton *orthotics;
    IBOutlet UIButton *modalities;
    
    IBOutlet UIButton *supplementation;
    
    IBOutlet UIButton *hep;
    
    IBOutlet UIButton *mri;
    IBOutlet UIButton *ct;
    IBOutlet UIButton *nerve;
    IBOutlet UIButton *emg;
    IBOutlet UIButton *outsidereferral;
    
    
    IBOutlet UIButton *d;
    IBOutlet UIButton *radio;
    
    IBOutlet UIButton *other1;
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
    
    IBOutlet UIButton *reset2;
    
    IBOutlet UIButton *reset1;
    
    IBOutlet UITextField *physiciansign;
    NSString *patientstatuslabel;
    NSString *other1label;
}
@property (retain, nonatomic) IBOutlet UITextField *c5left;
@property (retain, nonatomic) IBOutlet UITextField *c5right;
@property (retain, nonatomic) IBOutlet UITextField *c6left;
@property (retain, nonatomic) IBOutlet UITextField *c6right;
@property (retain, nonatomic) IBOutlet UITextField *c7left;
@property (retain, nonatomic) IBOutlet UITextField *c7right;
@property (retain, nonatomic) IBOutlet UIButton *walking;
@property (retain, nonatomic) IBOutlet UIButton *standing;

@property (retain, nonatomic) IBOutlet UITextView *additional;
@property (retain, nonatomic) IBOutlet UITextField *othertext;

@property (retain, nonatomic) IBOutlet UITextField *othertext1;

@property (retain, nonatomic) IBOutlet UIButton *other;

@property (retain, nonatomic) IBOutlet UITextField *d1;
@property (retain, nonatomic) IBOutlet UITextField *d2;
@property (retain, nonatomic) IBOutlet UITextField *d3;
@property (retain, nonatomic) IBOutlet UITextField *d4;
@property (retain, nonatomic) IBOutlet UITextField *d5;
@property (retain, nonatomic) IBOutlet UITextField *plantime;
@property (retain, nonatomic) IBOutlet UITextField *planweek;
@property (retain, nonatomic) IBOutlet UIButton *spinal;
@property (retain, nonatomic) IBOutlet UIButton *chiropractic;
@property (retain, nonatomic) IBOutlet UIButton *physical;
@property(retain, nonatomic)NSMutableDictionary *resultset;
@property(retain, nonatomic)NSMutableDictionary *recorddict;
@property (retain, nonatomic) IBOutlet UIButton *orthotics;

@property (retain, nonatomic) IBOutlet UIButton *modalities;

@property (retain, nonatomic) IBOutlet UIButton *supplementation;
@property (retain, nonatomic) IBOutlet UIButton *hep;

@property (retain, nonatomic) IBOutlet UIButton *mri;
@property (retain, nonatomic) IBOutlet UIButton *ct;
@property (retain, nonatomic) IBOutlet UIButton *nerve;
@property (retain, nonatomic) IBOutlet UITextField *physiciansign;
@property (retain, nonatomic) IBOutlet UISegmentedControl *patientstatus;



@property (retain, nonatomic) IBOutlet UIButton *emg;
@property (retain, nonatomic) IBOutlet UIButton *outsidereferral;
@property (retain, nonatomic) IBOutlet UIButton *d;


@property (retain, nonatomic) IBOutlet UIButton *submit;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *deletefunc;
@property (retain, nonatomic) IBOutlet UIButton *other1;

@property (retain, nonatomic) IBOutlet UIButton *radio;

@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;
@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *reset2;

@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;






























@end
