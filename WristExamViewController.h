//
//  WristExamViewController.h
//  EHR
//
//  Created by deemsys on 2/24/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"

@interface WristExamViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
    
    IBOutlet UITextField *patname;
    
    IBOutlet UISegmentedControl *seg11;
    IBOutlet UISegmentedControl *seg10;
    IBOutlet UISegmentedControl *seg9;
    IBOutlet UISegmentedControl *seg8;
    IBOutlet UISegmentedControl *seg7;
    IBOutlet UISegmentedControl *seg6;
    IBOutlet UISegmentedControl *seg5;
    IBOutlet UISegmentedControl *seg4;
    IBOutlet UISegmentedControl *seg3;
    IBOutlet UISegmentedControl *seg2;
    IBOutlet UISegmentedControl *seg1;
    IBOutlet UITextField *swell;
    IBOutlet UITextField *muscle;
    IBOutlet UITextField *datefield;
    IBOutlet UITextField *fift;
    
    IBOutlet UITextField *twentytwo;
    IBOutlet UITextField *twentyone;
    IBOutlet UITextField *twenty;
    IBOutlet UITextField *ninteen;
    IBOutlet UITextField *eighteen;
    IBOutlet UITextField *sixteen;
    IBOutlet UITextField *ele;
    IBOutlet UITextField *ten;
    IBOutlet UITextField *nine;
    IBOutlet UIButton *check1;
    IBOutlet UIButton *check3;
    IBOutlet UITextField *seventeen;
    
    IBOutlet UITextField *fourt;
    IBOutlet UITextField *thrt;
    IBOutlet UITextField *twel;
    IBOutlet UIButton *check2;
    
    IBOutlet UITextField *first;
    IBOutlet UITextView *txtv1;
    
    IBOutlet UITextField *sec;
    IBOutlet UITextField *thr;
    
    IBOutlet UITextField *four;
    
    IBOutlet UITextField *fiv;
    
    IBOutlet UITextField *six;
    
    IBOutlet UITextField *sev;
    NSMutableDictionary *recorddict;
    IBOutlet UITextField *eigh;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53,*temp54,*temp55,*temp56,*temp57,*temp58,*temp59,*temp60,*temp61,*temp62,*temp63,*temp64,*temp65,*temp66,*temp67,*temp68,*temp69,*temp70;
    
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)NSMutableDictionary*resultset;
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
- (IBAction)next:(id)sender;
- (IBAction)s11:(id)sender;
- (IBAction)s10:(id)sender;
- (IBAction)s9:(id)sender;
- (IBAction)s8:(id)sender;
- (IBAction)s7:(id)sender;
- (IBAction)s6:(id)sender;
- (IBAction)s5:(id)sender;
- (IBAction)s4:(id)sender;
- (IBAction)s2:(id)sender;
- (IBAction)s1:(id)sender;
- (IBAction)s3:(id)sender;
- (IBAction)checkchange:(id)sender;

@end
