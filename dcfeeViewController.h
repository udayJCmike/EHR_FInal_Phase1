//
//  dcfeeViewController.h
//  dcfee
//
//  Created by Admin on 05/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>



#import "TextFieldDatePicker.h"
@interface dcfeeViewController : UIViewController<UIAlertViewDelegate,TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51;
    NSMutableDictionary *recorddict,*resultset;
    
    NSString *_0,*_1,*_2,*_3,*_4,*_5,*_6,*_7,*_8,*_9,*_10,*_11,*_12,*_13,*_14,*_15,*_16,*_17,*_18,*_19,*_20,*_21,*_22,*_23,*_24,*_25,*_26,*_27,*_28,*_29,*_30,*_31,*_32,*_33,*_34,*_35,*_36,*_37,*_38,*_39,*_40,*_41,*_42,*_43,*_44,*_45,*_46,*_47,*_48,*_49,*_50,*_51,*_a0,*_a1,*_a2,*_a3,*_a4,*_a5,*_a6,*_a7,*_a8,*_a9,*_a10,*_a11,*_a12,*_a13,*_a14,*_a15,*_a16,*_a17,*_a18,*_a19,*_a20,*_a21,*_a22,*_a23,*_a24,*_a25,*_a26,*_a27,*_a28,*_a29,*_a30,*_a31,*_a32,*_a33,*_a34,*_a35,*_a36,*_a37,*_a38,*_a39,*_a40,*_a41,*_a42,*_a43,*_a44,*_a45,*_a46,*_a47,*_a48,*_a49,*_a50,*_a51;
    
    NSString *pid,*dates,*pname,*dr1,*rpts,*ptas,*initialemlimited,*initialexpanded,*initialdetailed,*initialemextended,*estpatientltd,*estpatientexp,*estpatientdetails,*estpatientcomp,*consultphys,*consultdetails,*consultcomps,*patientexp,*patientdetails,*patientcomp,*telephonebrief,*telephoneintermediate,*telephonecomp,*tractionmechanical,*electricstim,*vasopneumatic,*paraffin,*whirlpool,*diathermy,*infrared,*ultraviolet,*microwave,*manualelectricalstim,*iontophoresis,*contrastbathss,*ultrasounds,*unlisted,*therapeutic,*neuromuscular,*aquatic,*gaittraining,*massage,*manualtherapy,*unlistedother,*orthotics,*kinetic,*adlselfcare,*grouptherapy,*reintegration,*acupuncturewo,*acupuncturew,*spine12,*spine34,*spine5,*extremity,*muscle,*routine,*musclehand,*rangeofmotion,*rangeofmotionhand,*ncv,*ncvw,*ncvea,*sseplower,*ssepupper,*ssephead,*hreflex,*physicalperformance,*functionalcapacity,*text1,*text2,*supplies,*patienteducation,*medicaltestimony,*insuranceform,*teamconference,*completespine,*cervical23,*cervical4,*cervical67,*thoracic4,*thoracic2,*scoliosis,*lumbosacral,*lumbosacral4,*pelvis2,*lumbarcomplete,*elbow2,*wrist2,*hand2,*knee2,*ankle2,*foot2,*readotherfilms,*cervicalpillow,*lumbarsupport,*orthoticcustoml,*orthoticcustomr,*tensunit,*coldpack,*wristsplint,*heellift,*exerciseball,*exerciseband,*unlisteditem,*charges,*less,*balance,*payment,*paymentcashcheck,*amex,*discover,*mc,*visa,*cardsign,*date1,*parentsign,*doctorsign,*week,*months;
    int c;
    float calc;
    IBOutlet UITextField *limited;
    IBOutlet UITextField *expanded;
    IBOutlet UITextField *detailed;
    
    
    IBOutlet UITextField *page1;
    IBOutlet UITextField *consultationcomp;
    IBOutlet UITextField *intermediate;
    IBOutlet UITextField *brief;
    IBOutlet UITextField *consultcomp;
    IBOutlet UITextField *consultdetail;
    IBOutlet UITextField *consultexp;
    IBOutlet UITextField *refcomp;
    IBOutlet UITextField *refdetail;
    IBOutlet UITextField *refexp;
    IBOutlet UITextField *comp;
    IBOutlet UITextField *detail;
    IBOutlet UITextField *exp;
    IBOutlet UITextField *ltd;
    IBOutlet UITextField *extended;
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
- (IBAction)reset:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *reset;
- (IBAction)cancel:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property (strong, nonatomic) IBOutlet UITextField *patientid;
@property (strong, nonatomic) IBOutlet UITextField *patientname;
@property (strong, nonatomic) IBOutlet UITextField *physicianname;
@property (strong, nonatomic) IBOutlet UITextField *rpt;
@property (strong, nonatomic) IBOutlet UITextField *date;
@property (strong, nonatomic) IBOutlet UITextField *pta;
@property (strong, nonatomic) IBOutlet UITextField *limited;
@property (strong, nonatomic) IBOutlet UITextField *expanded;
@property (strong, nonatomic) IBOutlet UITextField *detailed;
@property (strong, nonatomic) IBOutlet UITextField *extended;
@property (strong, nonatomic) IBOutlet UITextField *ltd;
@property (strong, nonatomic) IBOutlet UITextField *exp;
@property (strong, nonatomic) IBOutlet UITextField *detail;
@property (strong, nonatomic) IBOutlet UITextField *comp;
@property (strong, nonatomic) IBOutlet UITextField *refexp;
@property (strong, nonatomic) IBOutlet UITextField *refdetail;
@property (strong, nonatomic) IBOutlet UITextField *refcomp;
@property (strong, nonatomic) IBOutlet UITextField *consultexp;
@property (strong, nonatomic) IBOutlet UITextField *consultdetail;
@property (strong, nonatomic) IBOutlet UITextField *consultcomp;
@property (strong, nonatomic) IBOutlet UITextField *brief;
@property (strong, nonatomic) IBOutlet UITextField *intermediate;
@property (strong, nonatomic) IBOutlet UITextField *consultationcomp;
@property (retain, nonatomic) IBOutlet UITextField *page1;
@property(retain, nonatomic)NSMutableDictionary *recorddict;


- (IBAction)next:(id)sender;

@end
