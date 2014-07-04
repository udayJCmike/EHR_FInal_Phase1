//
//  PatientInfoViewController.h
//  EHR
//
//  Created by DeemsysInc on 10/7/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "TextFieldDatePicker.h"
#import "WelcomeViewController.h"
#import "MBProgressHUD.h"
@interface PatientInfoViewController : UIViewController<UIPickerViewDelegate,TextFieldDatePickerDelegate,UITextFieldDelegate,MBProgressHUDDelegate>
{
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20;
    NSString *temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53,*temp54,*temp55,*temp56,*temp57,*temp58,*temp59,*temp60,*temp61,*temp62,*temp63,*temp64,*temp65,*temp66,*temp67,*temp68,*temp69,*temp70,*temp71,*temp72,*temp73,*temp74,*temp75,*temp76,*temp77,*temp78,*temp79;
    IBOutlet UITextField * name;
    IBOutlet UITextField *todaydate ;
    IBOutlet UITextField *streetaddress ;
    IBOutlet UITextField * homeph;
    IBOutlet UITextField * city;
    IBOutlet UITextField * cellph;
    IBOutlet UITextField * state;
    IBOutlet UITextField * zip;
    IBOutlet UITextField * pager;
    IBOutlet UITextField * socialsecnum;
    IBOutlet UITextField * empname;
    IBOutlet UITextField * occ;
    IBOutlet UITextField * empadd;
    IBOutlet UITextField * workph;
    IBOutlet UITextField * workcity;
    IBOutlet UITextField * workstate;
    IBOutlet UITextField * workzip;
    IBOutlet UITextField * spousename;
    IBOutlet UITextField * spouseemp;
    IBOutlet UITextField * spouseph;
    IBOutlet UITextField * relativeph;
    IBOutlet UITextField *relativename;
    IBOutlet UISwitch *switch1;
    IBOutlet UISwitch *switch2;
    IBOutlet UILabel *seg;
    IBOutlet UISegmentedControl*seggender;
    IBOutlet UILabel *marital;
    IBOutlet UISegmentedControl*segmarital;
    NSMutableDictionary *recorddict;
    int c;
    MBProgressHUD *HUD;
    BOOL isConnect;
    IBOutlet UILabel *resLabel;
    IBOutlet UILabel*resLabel2;
    IBOutlet UITextField *fromd;
    
    IBOutlet UIButton*setdate;
    UIDatePicker *datePicker;
    IBOutlet UILabel * sd1;
    IBOutlet UILabel * sd2;
    IBOutlet UILabel * sd3;
    IBOutlet UILabel * sd4;
    IBOutlet UILabel * sd5;
    IBOutlet UILabel * sd6;
    IBOutlet UILabel * sd7;
    IBOutlet UISegmentedControl *areyou;
    NSString *areyoulabel;
    IBOutlet UILabel *student;
    
    
}
-(IBAction)saveandcontinue:(id)sender;
- (IBAction)cancel:(id)sender;

-(IBAction)setFromDate;
- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender;
-(IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender;
-(BOOL)validateMobile:(NSString*)mobilenumber;
-(BOOL)validateNames:(NSString*)country1;
-(BOOL)validateUsername:(NSString*)user;
-(BOOL)validateZip:(NSString*)zipnumber;
-(BOOL)validatessn:(NSString*)ssnnumber;
@property (nonatomic, retain) UISwitch *switch1;
@property (nonatomic, retain) UILabel *resLabel;
@property (nonatomic, retain) UISwitch *switch2;
@property (nonatomic, retain) UILabel *resLabel2;
@property (nonatomic, retain) UILabel *seg;
@property (nonatomic, retain) UISegmentedControl*seggender;
@property (nonatomic, retain)IBOutlet UILabel *datelabel;
@property (nonatomic,retain) IBOutlet UIDatePicker *datePicker;
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property (nonatomic, retain) UILabel *marital;
@property (nonatomic, retain) UISegmentedControl*segmarital;
- (IBAction)changefromdate:(id)sender;
-(IBAction)segselected:(id)sender;
-(IBAction)segmaritalselected:(id)sender;
-(IBAction)clear:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *student;
@property (nonatomic, retain)NSMutableDictionary *resultset;
@property (nonatomic, retain)NSMutableDictionary *staff;
@property (retain, nonatomic) IBOutlet UISegmentedControl *areyou;
@property (retain, nonatomic) IBOutlet UILabel *sl1;
@property (retain, nonatomic) IBOutlet UILabel *sl2;
@property (retain, nonatomic) IBOutlet UILabel *sl3;
@end
