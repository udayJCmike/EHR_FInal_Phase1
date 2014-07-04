//
//  insuranceverifyViewController.h
//  EHR
//
//  Created by DeemsysInc on 10/16/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface insuranceverifyViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    NSMutableDictionary * recorddict;
    IBOutlet UITextField * patientname;
    IBOutlet UITextField * spokewith;
    IBOutlet UITextField * date;
    IBOutlet UITextField * fax;
    IBOutlet UITextField * amountdeduct;
    IBOutlet UITextField * deductmet;
    IBOutlet UITextField * visits;
    IBOutlet UISwitch * manipulationcovered;
    IBOutlet UITextField * manipulationpercent;
    IBOutlet UISwitch * therapycovered;
    IBOutlet UITextField * therapypercent;
    IBOutlet UISwitch * xrayscovered;
    IBOutlet UITextField * xraypercent;
    IBOutlet UISwitch * subjectdeduct;
    IBOutlet UISwitch * benefitshonored;
    IBOutlet UISwitch * networkbenefits;
    IBOutlet UITextField * deductible;
    IBOutlet UITextField * percentcovered;
  
    
    IBOutlet UISwitch * xraydeduct;
    IBOutlet UISwitch * honored;
    IBOutlet UITextField * address;
    IBOutlet UILabel * manipulationcoveredswitchlabel;
    IBOutlet UILabel * therapycoveredswitchlabel;
    IBOutlet UILabel * xraycoveredswitchlabel;
    IBOutlet UILabel * subjectdeductswitchlabel;
    IBOutlet UILabel * benefitshonoredswitchlabel;
    IBOutlet UILabel * networkbenefitsswitchlabel;
    IBOutlet UILabel * xraydeductswitchlabel;
    IBOutlet UILabel * honoredswitchlabel;
    IBOutlet UILabel * what1;
    IBOutlet UILabel * what2;
    IBOutlet UILabel * what3;
    IBOutlet UITextField *CM;
    
    IBOutlet UITextField *pt;
    IBOutlet UITextField *ov;
    int a,b,c,d;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    
    
    IBOutlet UIButton *checkbut3;
    IBOutlet UIButton *checkbut2;
    IBOutlet UIButton *checkbut1;
    
    
}

@property (retain, nonatomic) IBOutlet UIButton *delete;
- (IBAction)deleteform:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *cancel0;
@property (retain, nonatomic) IBOutlet UIButton *submit;


@property (retain, nonatomic) IBOutlet UIButton *cancel;
- (IBAction)cancel:(id)sender;

@property (retain, nonatomic) IBOutlet UIButton *reset1;

@property (retain, nonatomic) IBOutlet UIButton *update;

- (IBAction)checkchanged:(id)sender;
-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
-(IBAction)manipulationcoveredswitchchange:(id)sender;
-(IBAction)therapycoveredswitchchange:(id)sender;
-(IBAction)xraycoveredswitchchange:(id)sender;
-(IBAction)subjectdeductibleswitchswitchchange:(id)sender;
-(IBAction)benefitshonoredswitchange:(id)sender;
-(IBAction)networkbenefitsswitchchange:(id)sender;

-(IBAction)xraydeductswitchchange:(id)sender;
-(IBAction)honoredswitchchange:(id)sender;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
@property(nonatomic,retain) UITextField * patientname;
@property(nonatomic,retain) UITextField * spokewith;
@property(nonatomic,retain) UITextField * date;
@property(nonatomic,retain) UITextField * fax;
@property(nonatomic,retain) UITextField * amountdeduct;
@property(nonatomic,retain) UITextField * deductmet;
@property(nonatomic,retain) UITextField * visits;
@property(nonatomic,retain) UISwitch * manipulationcovered;
@property(nonatomic,retain) UITextField * manipulationpercent;
@property(nonatomic,retain) UISwitch * therapycovered;
@property(nonatomic,retain) UITextField * therapypercent;
@property(nonatomic,retain) UISwitch * xrayscovered;
@property(nonatomic,retain) UITextField * xraypercent;
@property(nonatomic,retain) UISwitch * subjectdeduct;
@property(nonatomic,retain) UISwitch * benefitshonored;
@property(nonatomic,retain) UISwitch * networkbenefits;
@property(nonatomic,retain) UITextField * deductible;
@property(nonatomic,retain) UITextField * percentcovered;
@property(nonatomic,retain) UISegmentedControl * therapies;
@property(nonatomic,retain) UILabel * therapysegmentlabel;
@property(nonatomic,retain) UISwitch * xraydeduct;
@property(nonatomic,retain) UISwitch * honored;
@property(nonatomic,retain) UITextField * address;
@property(nonatomic,retain) UILabel * manipulationcoveredswitchlabel;
@property(nonatomic,retain) UILabel * therapycoveredswitchlabel;
@property(nonatomic,retain) UILabel * xraycoveredswitchlabel;
@property(nonatomic,retain) UILabel * subjectdeductswitchlabel;
@property(nonatomic,retain) UILabel * benefitshonoredswitchlabel;
@property(nonatomic,retain) UILabel * networkbenefitsswitchlabel;
@property(nonatomic,retain) UILabel * xraydeductswitchlabel;
@property(nonatomic,retain) UILabel * honoredswitchlabel;

@end
