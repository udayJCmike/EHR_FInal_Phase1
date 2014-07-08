//
//  footViewController.h
//  foot
//
//  Created by DeemsysInc on 2/19/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface footViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    int a;
    NSMutableDictionary *recordict;
    NSMutableDictionary *resultset;
    IBOutlet UITextField *patientname;
    
    IBOutlet UITextField *date;
    IBOutlet UISegmentedControl *gait;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    IBOutlet UISegmentedControl *ao;
    
    IBOutlet UISegmentedControl *pronation;
    
    IBOutlet UISegmentedControl *supination;
    
    IBOutlet UISegmentedControl *forefoot;
    
    IBOutlet UISegmentedControl *varus;
    
    IBOutlet UISegmentedControl *valgus;
    
    IBOutlet UISegmentedControl *forefootvalgus;
    IBOutlet UIButton *palpation;
    
    IBOutlet UIButton *rangeofmotion;
    
    IBOutlet UIButton *orthotesting;
    
    IBOutlet UITextField *flexionleft;
    
    IBOutlet UITextField *flexionright;
    
    IBOutlet UITextField *dorsiflexionleft;
    IBOutlet UITextField *dorsiflexionright;
    
    IBOutlet UITextField *inversionleft;
    
    IBOutlet UITextField *inversionright;
    
    IBOutlet UITextField *eversionleft;
    
    IBOutlet UITextField *eversionright;
    
    IBOutlet UITextField *greatextensionleft;
    
    IBOutlet UITextField *greatextensionright;
    
    
    IBOutlet UITextField *greatflexionleft;
    
    IBOutlet UITextField *greatflexionright;
    
    IBOutlet UITextField *tinelleft;
    
    IBOutlet UITextField *medialright;
    IBOutlet UITextField *medialleft;
    IBOutlet UITextField *lateralright;
    IBOutlet UITextField *lateralleft;
    IBOutlet UITextField *drawerright;
    IBOutlet UITextField *drawerleft;
    IBOutlet UITextField *thompsonright;
    
    IBOutlet UITextField *thompsonleft;
    IBOutlet UITextField *longright;
    IBOutlet UITextField *longleft;
    IBOutlet UITextField *achillesright;
    IBOutlet UITextField *achillesleft;
    IBOutlet UITextField *tinelright;
    IBOutlet UIButton *neurological;
    
    IBOutlet UITextField *l1left;
    IBOutlet UITextField *l1right;
    
    IBOutlet UITextField *l2left;
    
    IBOutlet UITextField *l2right;
    
    IBOutlet UITextField *l3left;
    
    IBOutlet UITextField *l3right;
    
    IBOutlet UITextField *l4left;
    
    IBOutlet UITextField *l4right;
    
    IBOutlet UITextField *l5left;
    IBOutlet UITextField *l5righr;
    
    IBOutlet UITextField *s1left;
    IBOutlet UITextField *s1right;
    
    IBOutlet UITextField *ml1left;
    
    IBOutlet UITextField *ml1right;
    
    IBOutlet UITextField *ml2left;
    
    IBOutlet UITextField *ml2right;
    
    IBOutlet UITextField *ml3left;
    IBOutlet UITextField *ml3right;
    IBOutlet UITextField *ml4left;
    IBOutlet UITextField *ml4right;
    IBOutlet UITextField*forward;
    IBOutlet UITextField *ml5left;
    
    IBOutlet UITextField *ml5right;
    
    IBOutlet UITextField *ms1left;
    
    IBOutlet UITextField *ms1right;
    
    
    IBOutlet UITextView *notes;
    NSString *aolabel;
    NSString *gaitlabel;
    NSString *palpationlabel;
    NSString *rangeofmotionlabel;
    NSString *orthotestinglabel;
    NSString *neurologicallabel;
    NSString *pronationlabel;
    NSString *supinationlabel;
    NSString *forefootlabel;
    NSString *varuslabel;
    NSString *valguslabel;
    NSString *forefootvalguslabel;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53,*temp54;
    IBOutlet UITextField *swellingtf;
    IBOutlet UITextField *muscletf;
    
}
@property (strong, nonatomic) IBOutlet UITextField *patientname;
@property (strong, nonatomic) IBOutlet UITextField *date;

@property (strong, nonatomic) IBOutlet UISegmentedControl *gait;

@property (strong, nonatomic) IBOutlet UISegmentedControl *ao;

@property (strong, nonatomic) IBOutlet UISegmentedControl *pronation;

@property (strong, nonatomic) IBOutlet UISegmentedControl *supination;
@property (strong, nonatomic) IBOutlet UISegmentedControl *forefoot;
@property (strong, nonatomic) IBOutlet UISegmentedControl *varus;
@property (strong, nonatomic) IBOutlet UISegmentedControl *valgus;
@property (strong, nonatomic) IBOutlet UISegmentedControl *forefootvalgus;
@property (strong, nonatomic) IBOutlet UIButton *palpation;
@property (strong, nonatomic) IBOutlet UIButton *rangeofmotion;
@property (strong, nonatomic) IBOutlet UIButton *orthotesting;
@property (strong, nonatomic) IBOutlet UITextField *flexionleft;
@property (strong, nonatomic) IBOutlet UITextField *flexionright;
@property (strong, nonatomic) IBOutlet UITextField *dorsiflexionleft;
@property (strong, nonatomic) IBOutlet UITextField *dorsiflexionright;

@property (strong, nonatomic) IBOutlet UITextField *inversionleft;
@property (strong, nonatomic) IBOutlet UITextField *inversionright;
@property (strong, nonatomic) IBOutlet UITextField *eversionleft;
@property (strong, nonatomic) IBOutlet UITextField *eversionright;
@property (strong, nonatomic) IBOutlet UITextField *greatextensionleft;
@property (strong, nonatomic) IBOutlet UITextField *greatextensionright;

@property (strong, nonatomic) IBOutlet UITextField *greatflexionleft;
@property (strong, nonatomic) IBOutlet UITextField *greatflexionright;
@property (strong, nonatomic) IBOutlet UITextField *tinelleft;
@property (strong, nonatomic) IBOutlet UITextField *tinelright;
@property (strong, nonatomic) IBOutlet UITextField *achillesleft;
@property (strong, nonatomic) IBOutlet UITextField *achillesright;
@property (strong, nonatomic) IBOutlet UITextField *longleft;

@property (strong, nonatomic) IBOutlet UITextField *longright;
@property (strong, nonatomic) IBOutlet UITextField *thompsonleft;
@property (strong, nonatomic) IBOutlet UITextField *thompsonright;
@property (strong, nonatomic) IBOutlet UITextField *drawerleft;
@property (strong, nonatomic) IBOutlet UITextField *drawerright;


@property (strong, nonatomic) IBOutlet UITextField *lateralleft;
@property (strong, nonatomic) IBOutlet UITextField *lateralright;
@property (strong, nonatomic) IBOutlet UITextField *medialleft;
@property (strong, nonatomic) IBOutlet UITextField *medialright;

@property (strong, nonatomic) IBOutlet UIButton *neurological;
@property (strong, nonatomic) IBOutlet UITextField *l1left;

@property (strong, nonatomic) IBOutlet UITextField *l1right;
@property (strong, nonatomic) IBOutlet UITextField *l2left;

@property (strong, nonatomic) IBOutlet UITextField *l2right;
@property (strong, nonatomic) IBOutlet UITextField *l3left;
@property (strong, nonatomic) IBOutlet UITextField *l3right;
@property (strong, nonatomic) IBOutlet UITextField *l4left;
@property (strong, nonatomic) IBOutlet UITextField *l4right;
@property (strong, nonatomic) IBOutlet UITextField *l5left;
@property (strong, nonatomic) IBOutlet UITextField *l5right;
@property (strong, nonatomic) IBOutlet UITextField *s1left;
@property (strong, nonatomic) IBOutlet UITextField *s1right;
@property (strong, nonatomic) IBOutlet UITextField *ml1left;
@property (strong, nonatomic) IBOutlet UITextField *ml1right;
@property (strong, nonatomic) IBOutlet UITextField *ml2left;
@property (strong, nonatomic) IBOutlet UITextField *ml2right;
@property (strong, nonatomic) IBOutlet UITextField *ml3left;

@property (strong, nonatomic) IBOutlet UITextField *ml3right;
@property (strong, nonatomic) IBOutlet UITextField *ml4left;
@property (strong, nonatomic) IBOutlet UITextField *ml4right;

@property (strong, nonatomic) IBOutlet UITextField *ml5left;
@property (strong, nonatomic) IBOutlet UITextField *ml5right;
@property (strong, nonatomic) IBOutlet UITextField *ms1left;

@property (strong, nonatomic) IBOutlet UITextField *ms1right;

@property(strong, nonatomic)NSMutableDictionary *recorddict;
@property(strong, nonatomic) NSMutableDictionary *resultset;

@property (retain, nonatomic) IBOutlet UITextField *muscletf;

@property (retain, nonatomic) IBOutlet UITextField *swellingtf;


@property (retain, nonatomic) IBOutlet UITextView *notes;

@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;


































@end
