//
//  shoulderViewController.h
//  shoulder
//
//  Created by deemsys on 2/24/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"

@interface shoulderViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    int a;
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53;
    NSMutableDictionary *resultset;
    
    IBOutlet UITextField *patientname;
    IBOutlet UITextField *date;
    
    IBOutlet UITextView *notes;
    IBOutlet UITextField *muscle;
    IBOutlet UITextField *swelling;
    
    IBOutlet UIButton *palpation;
    IBOutlet UISegmentedControl *ao;
    IBOutlet UISegmentedControl *pectoralisminor;
    
    IBOutlet UISegmentedControl *teresminor;
    IBOutlet UISegmentedControl *supraspinatus;
    IBOutlet UISegmentedControl *teresmajor;
    IBOutlet UISegmentedControl *infraspinatus;
    IBOutlet UISegmentedControl *rhomboids;
    
    IBOutlet UISegmentedControl *serratusant;
    
    IBOutlet UISegmentedControl *trapezius;
    
    IBOutlet UIButton *rangeofmotion;
    IBOutlet UIButton *orthotesting;
    IBOutlet UITextField *flexionleft;
    
    IBOutlet UITextField *flexionright;
    
    IBOutlet UITextField *extensionleft;
    IBOutlet UITextField *extensionright;
    
    IBOutlet UITextField *abductionleft;
    IBOutlet UITextField *abductionright;
    
    IBOutlet UITextField *adductionleft;
    
    IBOutlet UITextField *adductionright;
    IBOutlet UITextField *internalleft;
    IBOutlet UITextField *internalright;
    
    IBOutlet UITextField *externalleft;
    IBOutlet UITextField *externalright;
    IBOutlet UITextField *canleft;
    IBOutlet UITextField *canright;
    IBOutlet UITextField *signleft;
    IBOutlet UITextField *signright;
    IBOutlet UITextField *scratchleft;
    IBOutlet UITextField *scratchright;
    IBOutlet UITextField *pushleft;
    
    IBOutlet UITextField *pushright;
    IBOutlet UITextField *dawbarnleft;
    IBOutlet UITextField *dawbarnright;
    IBOutlet UITextField *yergasonleft;
    IBOutlet UITextField *yergasonright;
    IBOutlet UITextField *codmanleft;
    IBOutlet UITextField *codmanright;
    IBOutlet UITextField *apprehensionleft;
    IBOutlet UITextField *apprehensionright;
    IBOutlet UIButton *neurological;
    IBOutlet UITextField *c5left;
    IBOutlet UITextField *c5right;
    IBOutlet UITextField *c6left;
    IBOutlet UITextField *c6right;
    IBOutlet UITextField *c7left;
    IBOutlet UITextField *c7right;
    IBOutlet UITextField *c8left;
    IBOutlet UITextField *c8right;
    IBOutlet UITextField *t1left;
    IBOutlet UITextField *t1right;
    IBOutlet UITextField *mc5right;
    IBOutlet UITextField *mc5left;
    IBOutlet UITextField *mc6left;
    IBOutlet UITextField *mc6right;
    IBOutlet UITextField *mc7left;
    IBOutlet UITextField *mc7right;
    IBOutlet UITextField *mc8left;
    IBOutlet UITextField *mc8right;
    
    IBOutlet UITextField *mt1left;
    
    IBOutlet UITextField *mt1right;
    NSString *aolabel;
    
    
    NSString *palpationlabel;
    NSString *rangeofmotionlabel;
    NSString *orthotestinglabel;
    NSString *neurologicallabel;
    NSString *pectoralisminorlabel;
    NSString *teresminorlabel;
    NSString *supraspinatuslabel;
    NSString *teresmajorlabel;
    NSString *infraspinatuslabel;
    NSString *rhomboidslabel;
    NSString *serratusantlabel;
    NSString *trapeziuslabel;
    
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    
}
@property(strong, nonatomic) NSMutableDictionary *resultset;
@property (retain, nonatomic) IBOutlet UITextField *patientname;
@property (retain, nonatomic) IBOutlet UITextView *notes;
@property (retain, nonatomic) IBOutlet UITextField *muscle;
@property (retain, nonatomic) IBOutlet UITextField *swelling;
@property (retain, nonatomic) IBOutlet UISegmentedControl *pectoralisminor;
@property (retain, nonatomic) IBOutlet UISegmentedControl *teresminor;
@property (retain, nonatomic) IBOutlet UISegmentedControl *supraspinatus;
@property (retain, nonatomic) IBOutlet UISegmentedControl *teresmajor;
@property (retain, nonatomic) IBOutlet UISegmentedControl *infraspinatus;

@property (retain, nonatomic) IBOutlet UISegmentedControl *rhomboids;

@property (retain, nonatomic) IBOutlet UISegmentedControl *serratusant;

@property (retain, nonatomic) IBOutlet UISegmentedControl *trapezius;


@property (retain, nonatomic) IBOutlet UIButton *rangeofmotion;

@property (retain, nonatomic) IBOutlet UIButton *orthotesting;

@property (retain, nonatomic) IBOutlet UITextField *flexionleft;

@property (retain, nonatomic) IBOutlet UITextField *flexionright;
@property (retain, nonatomic) IBOutlet UITextField *extensionleft;
@property (retain, nonatomic) IBOutlet UITextField *extensionright;
@property (retain, nonatomic) IBOutlet UITextField *abductionleft;
@property (retain, nonatomic) IBOutlet UITextField *abductionright;

@property (retain, nonatomic) IBOutlet UITextField *adductionleft;
@property (retain, nonatomic) IBOutlet UITextField *adductionright;

@property (retain, nonatomic) IBOutlet UITextField *internalleft;
@property (retain, nonatomic) IBOutlet UITextField *internalright;

@property (retain, nonatomic) IBOutlet UITextField *externalleft;

@property (retain, nonatomic) IBOutlet UITextField *externalright;
@property (retain, nonatomic) IBOutlet UITextField *canleft;
@property (retain, nonatomic) IBOutlet UITextField *canright;
@property (retain, nonatomic) IBOutlet UITextField *signleft;
@property (retain, nonatomic) IBOutlet UITextField *signright;
@property (retain, nonatomic) IBOutlet UITextField *scratchleft;
@property (retain, nonatomic) IBOutlet UITextField *scratchright;
@property (retain, nonatomic) IBOutlet UITextField *pushleft;
@property (retain, nonatomic) IBOutlet UITextField *pushright;
@property (retain, nonatomic) IBOutlet UITextField *dawbarnleft;

@property (retain, nonatomic) IBOutlet UITextField *dawbarnright;
@property (retain, nonatomic) IBOutlet UITextField *yergasonleft;

@property (retain, nonatomic) IBOutlet UITextField *yergasonright;
@property (retain, nonatomic) IBOutlet UITextField *codmanleft;

@property (retain, nonatomic) IBOutlet UITextField *codmanright;

@property (retain, nonatomic) IBOutlet UITextField *apprehensionleft;
@property (retain, nonatomic) IBOutlet UITextField *apprehensionright;
@property (retain, nonatomic) IBOutlet UIButton *neurological;
@property (retain, nonatomic) IBOutlet UITextField *c5left;
@property (retain, nonatomic) IBOutlet UITextField *c5right;
@property (retain, nonatomic) IBOutlet UITextField *c6left;
@property (retain, nonatomic) IBOutlet UITextField *c6right;
@property (retain, nonatomic) IBOutlet UITextField *c7left;
@property (retain, nonatomic) IBOutlet UITextField *c7right;
@property (retain, nonatomic) IBOutlet UITextField *c8left;
@property (retain, nonatomic) IBOutlet UITextField *c8right;
@property (retain, nonatomic) IBOutlet UITextField *t1left;
@property (retain, nonatomic) IBOutlet UITextField *t1right;
@property (retain, nonatomic) IBOutlet UITextField *mc5left;
@property (retain, nonatomic) IBOutlet UITextField *mc5right;

@property (retain, nonatomic) IBOutlet UITextField *mc6left;
@property (retain, nonatomic) IBOutlet UITextField *mc6right;
@property (retain, nonatomic) IBOutlet UITextField *mc7left;
@property (retain, nonatomic) IBOutlet UITextField *mc7right;
@property (retain, nonatomic) IBOutlet UITextField *mc8left;
@property (retain, nonatomic) IBOutlet UITextField *mc8right;
@property (retain, nonatomic) IBOutlet UITextField *mt1left;
@property (retain, nonatomic) IBOutlet UITextField *mt1right;
@property(retain, nonatomic)NSMutableDictionary *recorddict;
@property (retain, nonatomic) IBOutlet UIButton *palpation;
@property (retain, nonatomic) IBOutlet UITextField *date;
@property (retain, nonatomic) IBOutlet UISegmentedControl *ao;





@end
