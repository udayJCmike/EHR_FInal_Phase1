//
//  foot1ViewController.h
//  foot
//
//  Created by DeemsysInc on 2/20/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface foot1ViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    int c;
    NSMutableDictionary *recorddict;
    
    IBOutlet UITextField *l4left;
    
    IBOutlet UITextField *otherte;
    
    IBOutlet UITextField *l4right;
    
    IBOutlet UITextField *l5left;
    
    IBOutlet UITextField *l5right;
    
    
    IBOutlet UITextField *s1left;
    
    IBOutlet UITextField *s1right;
    IBOutlet UIButton *walking;
    IBOutlet UIButton *standing;
    
    IBOutlet UIButton *stairs;
    
    IBOutlet UIButton *others;
    
    IBOutlet UISegmentedControl *patientstatus;
    
    IBOutlet UITextField *diag1;
    IBOutlet UITextField *diag2;
    
    IBOutlet UITextField *diag4;
    IBOutlet UITextField *diag3;
    IBOutlet UITextField *diag5;
    IBOutlet UITextField *plantime;
    IBOutlet UITextField *planweek;
    IBOutlet UIButton *spinal;
    
    IBOutlet UIButton *chiropratic;
    
    IBOutlet UIButton *physical;
    
    IBOutlet UIButton *orthotics;
    
    IBOutlet UIButton *modalities;
    
    IBOutlet UIButton *supplementation;
    IBOutlet UIButton *hep;
    IBOutlet UIButton *mri;
    IBOutlet UIButton *ct;
    IBOutlet UIButton *nerve;
    
    IBOutlet UIButton *outsiderefrral;
    IBOutlet UIButton *emg;
    
    ;
    IBOutlet UIButton *d;
    
    IBOutlet UITextField *physiciansign;
    NSString *spinal1;
    NSString *chiropractic1;
    NSString *physical1;
    NSString *orthotics1;
    NSString*modalities1;
    NSString *supplementation1;
    NSString *hep1;
    NSString *mri1;
    NSString *ct1;
    NSString *emg1;
    NSString *outsiderefrral1;
    NSString *d1;
    NSString *nerve1;
    NSString *patientstatuslabel;
    IBOutlet UITextView *addcomments;
    NSString*radiolab,*otherlab;
    
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    NSString *walking1;
    NSString *standing1;
    NSString *stairs1;
    NSString *other1;
    
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36;
    
    NSMutableDictionary *resultset;
    
    
}
@property(strong, nonatomic) NSMutableDictionary *resultset;
@property(retain, nonatomic)NSMutableDictionary *recorddict;
@property (retain, nonatomic) IBOutlet UITextField *l4left;
@property (retain, nonatomic) IBOutlet UITextField *l4right;

@property (retain, nonatomic) IBOutlet UITextField *l5left;
@property (retain, nonatomic) IBOutlet UITextField *l5right;
@property (retain, nonatomic) IBOutlet UITextField *s1left;
@property (retain, nonatomic) IBOutlet UITextField *s1right;
@property (retain, nonatomic) IBOutlet UIButton *walking;
@property (retain, nonatomic) IBOutlet UIButton *standing;
@property (retain, nonatomic) IBOutlet UIButton *stairs;
@property (retain, nonatomic) IBOutlet UIButton *other;
@property (retain, nonatomic) IBOutlet UISegmentedControl *patientstatus;
@property (retain, nonatomic) IBOutlet UITextField *diag1;
@property (retain, nonatomic) IBOutlet UITextField *diag2;
@property (retain, nonatomic) IBOutlet UITextField *diag3;
@property (retain, nonatomic) IBOutlet UITextField *diag4;
@property (retain, nonatomic) IBOutlet UIButton *radio;
@property (retain, nonatomic) IBOutlet UIButton *otherbut;
@property (retain, nonatomic) IBOutlet UITextField *othertext;

@property (retain, nonatomic) IBOutlet UITextField *diag5;
@property (retain, nonatomic) IBOutlet UITextField *plantime;
@property (retain, nonatomic) IBOutlet UITextField *planweek;
@property (retain, nonatomic) IBOutlet UIButton *spinal;
@property (retain, nonatomic) IBOutlet UIButton *chiropractic;
@property (retain, nonatomic) IBOutlet UIButton *emg;
@property (retain, nonatomic) IBOutlet UIButton *orthotics;
@property (retain, nonatomic) IBOutlet UIButton *nerve;
@property (retain, nonatomic) IBOutlet UIButton *d;

@property (retain, nonatomic) IBOutlet UIButton *mri;
@property (retain, nonatomic) IBOutlet UIButton *outsiderefrral;

@property (retain, nonatomic) IBOutlet UIButton *hep;

@property (retain, nonatomic) IBOutlet UIButton *modalities;
@property (retain, nonatomic) IBOutlet UITextField *physiciansign;
@property (retain, nonatomic) IBOutlet UIButton *physical;
@property (retain, nonatomic) IBOutlet UIButton *supplementation;
@property (retain, nonatomic) IBOutlet UIButton *ct;
@property (retain, nonatomic) IBOutlet UIButton *submit;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *deletefunc;
@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *reset2;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;


@end
