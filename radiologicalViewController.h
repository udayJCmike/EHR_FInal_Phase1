//
//  radiologicalViewController.h
//  radiological
//
//  Created by deemsys on 3/2/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>



#import "TextFieldDatePicker.h"
@interface radiologicalViewController : UIViewController<TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
    int a;
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18;
    IBOutlet UITextField *patientname;
    
    
    
    IBOutlet UITextField *dob;
    
    IBOutlet UITextField *date;
    
    IBOutlet UITextField *pid;
    
    IBOutlet UISegmentedControl *views;
    
    
    IBOutlet UIButton *neg;
    IBOutlet UIButton *pos;
    IBOutlet UIButton *bre;
    
    IBOutlet UIButton *adi;
    IBOutlet UITextField *postext;
    
    IBOutlet UITextField *bretext;
    IBOutlet UIButton *hypo;
    IBOutlet UIButton *nor;
    
    IBOutlet UIButton *hyper;
    IBOutlet UISegmentedControl *hyposeg;
    
    IBOutlet UISegmentedControl *norseg;
    
    IBOutlet UISegmentedControl *hyperseg;
    
    IBOutlet UIButton *mcnor;
    
    IBOutlet UIButton *mcinter;
    IBOutlet UIButton *mild;
    
    
    IBOutlet UIButton *severe;
    
    IBOutlet UIButton *narrow;
    
    IBOutlet UITextField *narrowtext;
    
    IBOutlet UIButton *anterior;
    
    IBOutlet UITextField *anteriortext;
    IBOutlet UIButton *sub;
    
    IBOutlet UITextField *subtext;
    
    IBOutlet UIButton *sch;
    IBOutlet UITextField *schtext;
    IBOutlet UIButton *foraminal;
    IBOutlet UISegmentedControl *foraminalseg;
    
    IBOutlet UIButton *oster;
    
    IBOutlet UISegmentedControl *osterseg;
    IBOutlet UIButton *dec;
    IBOutlet UISegmentedControl *decseg;
    IBOutlet UIButton *decrl;
    IBOutlet UISegmentedControl *decrlseg;
    
    IBOutlet UISegmentedControl *degseg;
    IBOutlet UIButton *mi;
    
    IBOutlet UIButton *mo;
    
    IBOutlet UIButton *se;
    
    IBOutlet UIButton *apex;
    
    IBOutlet UITextField *apextext;
    IBOutlet UIButton *deg;
    IBOutlet UIButton *soft;
    IBOutlet UITextField *softtext;
    IBOutlet UISegmentedControl *dlt;
    IBOutlet UIButton *other;
    IBOutlet UITextField *othertext;
    NSString *viewl;
    NSString *hyposegl;
    NSString *norsegl;
    NSString *hypersegl;
    NSString *degsegl;
    NSString *foraminalsegl;
    NSString *ostersegl;
    NSString *decsegl;
    NSString *decrlsegl;
    NSString *dltsegl;
    NSString *negative;
    NSString *positive;
    NSString *hypol;
    NSString *brea;
    NSString *ad;
    NSString *normal;
    NSString *hyperl;
    NSString *mc;
    NSString *mci;
    NSString *degen;
    NSString *mild1;
    NSString *moderate1;
    NSString *severe1;
    NSString *narrow1;
    NSString *anterior1;
    NSString *sub1;
    NSString *sch1;
    NSString *fora;
    NSString *oster1;
    NSString *decreased;
    NSString *derl;
    NSString *mi1;
    NSString *mo1;
    NSString *se1;
    NSString *apex1;
    NSString *soft1;
    NSString *other1;
    
    
}

@property (strong, nonatomic) IBOutlet UITextField *patientname;
@property (strong, nonatomic) IBOutlet UITextField *pid;
@property (strong, nonatomic) IBOutlet UITextField *dob;
@property (strong, nonatomic) IBOutlet UITextField *date;

@property (retain, nonatomic) IBOutlet UISegmentedControl *views;
@property (strong, nonatomic) IBOutlet UIButton *neg;
@property (strong, nonatomic) IBOutlet UIButton *pos;
@property (strong, nonatomic) IBOutlet UITextField *postext;
@property (strong, nonatomic) IBOutlet UIButton *bre;
@property (strong, nonatomic) IBOutlet UITextField *bretext;
@property (strong, nonatomic) IBOutlet UIButton *adi;
@property (strong, nonatomic) IBOutlet UIButton *hypo;
@property (strong, nonatomic) IBOutlet UIButton *nor;
@property (strong, nonatomic) IBOutlet UIButton *hyper;
@property (strong, nonatomic) IBOutlet UISegmentedControl *hyposeg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *norseg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *hyperseg;
@property (strong, nonatomic) IBOutlet UIButton *mcnor;
@property (strong, nonatomic) IBOutlet UIButton *mcinter;
@property (strong, nonatomic) IBOutlet UIButton *deg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *degseg;
@property (strong, nonatomic) IBOutlet UIButton *mild;
@property (strong, nonatomic) IBOutlet UIButton *moderate;
@property (strong, nonatomic) IBOutlet UIButton *severe;
@property (strong, nonatomic) IBOutlet UIButton *narrow;
@property (strong, nonatomic) IBOutlet UIButton *anterior;
- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *sub;
@property (strong, nonatomic) IBOutlet UITextField *subtext;
@property (strong, nonatomic) IBOutlet UIButton *sch;
@property (strong, nonatomic) IBOutlet UITextField *schtext;
@property (strong, nonatomic) IBOutlet UITextField *anteriortext;
@property (strong, nonatomic) IBOutlet UIButton *foraminal;
@property (strong, nonatomic) IBOutlet UITextField *narrowtext;
@property (strong, nonatomic) IBOutlet UISegmentedControl *foraminalseg;
@property (strong, nonatomic) IBOutlet UIButton *oster;
@property (strong, nonatomic) IBOutlet UISegmentedControl *osterseg;
@property (strong, nonatomic) IBOutlet UIButton *dec;
@property (strong, nonatomic) IBOutlet UISegmentedControl *decseg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *decrlseg;
@property (strong, nonatomic) IBOutlet UIButton *decrl;
@property (strong, nonatomic) IBOutlet UISegmentedControl *dlt;
@property (strong, nonatomic) IBOutlet UIButton *mi;
@property (strong, nonatomic) IBOutlet UIButton *mo;
@property (strong, nonatomic) IBOutlet UIButton *se;
@property (strong, nonatomic) IBOutlet UIButton *apex;
@property (strong, nonatomic) IBOutlet UITextField *apextext;
@property (strong, nonatomic) IBOutlet UIButton *soft;
@property (strong, nonatomic) IBOutlet UITextField *softtext;

@property (strong, nonatomic) IBOutlet UIButton *other;
@property (strong, nonatomic) IBOutlet UITextField *othertext;

@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@property (strong, nonatomic)NSMutableDictionary *recorddict;
@end
