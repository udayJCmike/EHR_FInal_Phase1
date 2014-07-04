//
//  elbowViewController.h
//  elbow
//
//  Created by Admin on 21/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "TextFieldDatePicker.h"
@interface elbowViewController : UIViewController<TextFieldDatePickerDelegate>
{
    int c,a;
    NSMutableDictionary *resultset;
    NSMutableDictionary *recorddict;
    NSMutableArray *Palpation;
    NSMutableArray *Functional;
    NSMutableArray *Orthopedic;
    NSMutableArray *Neurological;
    IBOutlet UISegmentedControl *domi;
    IBOutlet UISegmentedControl *biceps;
    IBOutlet UISegmentedControl *pronator;
    IBOutlet UISegmentedControl *triceps;
    IBOutlet UISegmentedControl *anconeus;
    IBOutlet UISegmentedControl *common;
    IBOutlet UISegmentedControl *commonexten;
    NSString *dominant_hand;
    NSString *biceps_brachii;
    NSString *triceps_brachii;
    NSString *pronator_teres;
    NSString *Anconeus;
    NSString *common_flexors;
    NSString *common_extensors;
    IBOutlet UIButton *palpation;
    IBOutlet UITextField *date;
    IBOutlet UIButton *functional;
    IBOutlet UIButton *ortho;
    IBOutlet UIButton *neuro;
    IBOutlet UILabel *palun;
    IBOutlet UILabel *funun;
    IBOutlet UILabel *orthun;
    IBOutlet UILabel *neuroun;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53,*temp54,*temp55,*temp56,*temp57,*temp58,*temp59,*temp60,*temp61,*temp62,*temp63,*temp64,*temp65;
    
}
@property (strong, nonatomic) IBOutlet UITextField *patientname;
@property (strong, nonatomic) IBOutlet UITextField *muscle;
@property (strong, nonatomic) IBOutlet UITextField *swelling;
@property (strong, nonatomic) IBOutlet UITextField *othernotes;
@property (strong, nonatomic) IBOutlet UITextField *flexL;
@property (strong, nonatomic) IBOutlet UITextField *flexR;
@property (strong, nonatomic) IBOutlet UITextField *extensionL;
@property (strong, nonatomic) IBOutlet UITextField *extensionR;
@property (strong, nonatomic) IBOutlet UITextField *pronationL;
@property (strong, nonatomic) IBOutlet UITextField *pronationR;
@property (strong, nonatomic) IBOutlet UITextField *supiL;
@property (strong, nonatomic) IBOutlet UITextField *supiR;
@property (strong, nonatomic) IBOutlet UITextField *golfL;
@property (strong, nonatomic) IBOutlet UITextField *golfR;
@property (strong, nonatomic) IBOutlet UITextField *tennisL;
@property (strong, nonatomic) IBOutlet UITextField *tennisR;
@property (strong, nonatomic) IBOutlet UITextField *varusL;
@property (strong, nonatomic) IBOutlet UITextField *varusR;
@property (strong, nonatomic) IBOutlet UITextField *valgusL;
@property (strong, nonatomic) IBOutlet UITextField *valgusR;
@property (strong, nonatomic) IBOutlet UITextField *tinL;
@property (strong, nonatomic) IBOutlet UITextField *tinR;
@property (strong, nonatomic) IBOutlet UITextField *ULTTL;
@property (strong, nonatomic) IBOutlet UITextField *ULTTR;
@property (strong, nonatomic) IBOutlet UITextField *SC5L;
@property (strong, nonatomic) IBOutlet UITextField *SC5R;
@property (strong, nonatomic) IBOutlet UITextField *SC6L;
@property (strong, nonatomic) IBOutlet UITextField *SC6R;
@property (strong, nonatomic) IBOutlet UITextField *SC7L;
@property (strong, nonatomic) IBOutlet UITextField *SC7R;
@property (strong, nonatomic) IBOutlet UITextField *SC8L;
@property (strong, nonatomic) IBOutlet UITextField *SC8R;
@property (strong, nonatomic) IBOutlet UITextField *ST1L;
@property (strong, nonatomic) IBOutlet UITextField *ST1R;
@property (strong, nonatomic) IBOutlet UITextField *RC5L;
@property (strong, nonatomic) IBOutlet UITextField *RC5R;
@property (strong, nonatomic) IBOutlet UITextField *RC6L;
@property (strong, nonatomic) IBOutlet UITextField *RC6R;
@property (strong, nonatomic) IBOutlet UITextField *RC7L;
@property (strong, nonatomic) IBOutlet UITextField *RC7R;
@property (retain, nonatomic) IBOutlet UISegmentedControl *domi;
@property (retain, nonatomic) IBOutlet UISegmentedControl *biceps;
@property (retain, nonatomic) IBOutlet UISegmentedControl *pronator;
@property (retain, nonatomic) IBOutlet UISegmentedControl *triceps;
@property (retain, nonatomic) IBOutlet UISegmentedControl *anconeus;
@property (retain, nonatomic) IBOutlet UISegmentedControl *common;
@property (retain, nonatomic) IBOutlet UISegmentedControl *commonexten;
@property (retain, nonatomic) NSMutableDictionary *resultset;
- (IBAction)NEXT:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;


























@end
