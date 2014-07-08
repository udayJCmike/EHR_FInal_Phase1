//
//  AutoAccidentViewController2.h
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface AutoAccidentViewController2 : UIViewController<TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
    
    IBOutlet UILabel * shoulderseatbeltlabel;
    IBOutlet UILabel * airbagdeployedlabel;
    IBOutlet UILabel * wereyoulabel;
    IBOutlet UILabel * bodypositionlabel;
    IBOutlet UITextField * bodypositionotherlabel;
    IBOutlet UILabel * headpositionlabel;
    IBOutlet UITextField * headpositionotherlabel;
    IBOutlet UILabel * handsonwheellabel;
    IBOutlet UILabel * awareofcrashlabel;
    IBOutlet UILabel * braceyourselflabel;
    IBOutlet UILabel * braceyourselfoptionlabel;
    IBOutlet UILabel * furtherinjurylabel;
    IBOutlet UITextField * injuryexplainlabel;
    IBOutlet UILabel * patientbodylabel;
    IBOutlet UITextField * patientbodyotherlabel;
    IBOutlet UILabel * wearingglasslabel;
    IBOutlet UILabel * glassesstilllabel;
    IBOutlet UILabel * unconsiouslabel;
    IBOutlet UITextField * unconsiousforlabel;
    IBOutlet UITextField * propertydamagelabel;
    IBOutlet UILabel * damagecarlabel;
    IBOutlet UILabel * patientbodystrikelabel;
    IBOutlet UITextField * myheadhitlabel;
    IBOutlet UITextField * rLhiphitlabel;
    IBOutlet UITextField * chesthitlabel;
    IBOutlet UITextField * rlleghitlabel;
    IBOutlet UITextField * rlshoulderhitlabel;
    IBOutlet UITextField * rlkneehitlabel;
    IBOutlet UITextField * rlarmhitlabel;
    IBOutlet UITextField * otherparthitlabel;
    IBOutlet UISegmentedControl * shoulderseatbeltsegment;
    IBOutlet UISegmentedControl * wereyousegment;
    IBOutlet UISegmentedControl * bodypositionsegment;
    IBOutlet UISegmentedControl * headpositionsegment;
    IBOutlet UISegmentedControl * handsonwheelsegment;
    IBOutlet UISegmentedControl * awareofcrashsegment;
    IBOutlet UISegmentedControl * braceoptionsegment;
    IBOutlet UISegmentedControl * patientbodysegment;
    IBOutlet UISegmentedControl * damagecarsegment;
    IBOutlet UISwitch * airbagdeployedswitch;
    IBOutlet UISwitch * braceyourselfswitch;
    IBOutlet UISwitch * furtherinjuryswitch;
    IBOutlet UISwitch * wearingglassswitch;
    IBOutlet UISwitch * glassesstillswitch;
    IBOutlet UISwitch * unconsiousswitch;
    IBOutlet UISwitch * patientbodystrikeswitch;
    int c;
    IBOutlet UILabel * wereyou2;
    IBOutlet UILabel * pleaseexplain2;
    IBOutlet UILabel * unconsious2;
    IBOutlet UILabel * pleasecomplete;
    IBOutlet UILabel * label1;
    IBOutlet UILabel * label2;
    IBOutlet UILabel * label3;
    IBOutlet UILabel * label4;
    IBOutlet UILabel * label5;
    IBOutlet UILabel * label6;
    IBOutlet UILabel * label7;
    IBOutlet UILabel * label8;
    
    IBOutlet UIButton *cancel;
    
    NSMutableDictionary * temp;
    
    int a,b,d;
    
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
-(IBAction)saveandcontinue:(id)sender;
-(IBAction)clearall:(id)sender;
-(IBAction)shoulderseatbeltsegmentchange:(id)sender;
-(IBAction)airbagdeployedswitchchange:(id)sender;
-(IBAction)wereyousegmentchange:(id)sender;
-(IBAction)bodypositionsegmentchange:(id)sender;
-(IBAction)headpositionsegmentchange:(id)sender;
-(IBAction)handsonwheelsegmentchange:(id)sender;
-(IBAction)awareofcrashsegmentchange:(id)sender;
-(IBAction)braceyourselfswitchchange:(id)sender;
-(IBAction)braceoptionsegmentchange:(id)sender;
-(IBAction)furtherinjuryswitchchange:(id)sender;
-(IBAction)patientbodysegmentchange:(id)sender;
-(IBAction)wearingglassswitchchange:(id)sender;
-(IBAction)glassesstillswitchchange:(id)sender;
-(IBAction)unconsiousswitchchange:(id)sender;
-(IBAction)damagecarsegmentchange:(id)sender;
-(IBAction)patientbodystrikeswitchchange:(id)sender;
-(IBAction)back:(id)sender;
@property(nonatomic,retain)NSMutableDictionary *resultset;
@property(nonatomic,retain)NSMutableDictionary * recorddict;
@property(nonatomic,retain) UISegmentedControl * shoulderseatbeltsegment;
@property(nonatomic,retain) UISegmentedControl * wereyousegment;
@property(nonatomic,retain) UISegmentedControl * bodypositionsegment;
@property(nonatomic,retain) UISegmentedControl * headpositionsegment;
@property(nonatomic,retain) UISegmentedControl * handsonwheelsegment;
@property(nonatomic,retain) UISegmentedControl * awareofcrashsegment;
@property(nonatomic,retain) UISegmentedControl * braceoptionsegment;
@property(nonatomic,retain) UISegmentedControl * patientbodysegment;
@property(nonatomic,retain) UISegmentedControl * damagecarsegment;
@property(nonatomic,retain) UISwitch * airbagdeployedswitch;
@property(nonatomic,retain) UISwitch * braceyourselfswitch;
@property(nonatomic,retain) UISwitch * furtherinjuryswitch;
@property(nonatomic,retain) UISwitch * wearingglassswitch;
@property(nonatomic,retain) UISwitch * glassesstillswitch;
@property(nonatomic,retain) UISwitch * unconsiousswitch;
@property(nonatomic,retain) UISwitch * patientbodystrikeswitch;
@property(nonatomic,retain) UILabel * shoulderseatbeltlabel;
@property(nonatomic,retain) UILabel * airbagdeployedlabel;
@property(nonatomic,retain) UILabel * wereyoulabel;
@property(nonatomic,retain) UILabel * bodypositionlabel;
@property(nonatomic,retain) UITextField * bodypositionotherlabel;
@property(nonatomic,retain) UILabel * headpositionlabel;
@property(nonatomic,retain) UITextField * headpositionotherlabel;
@property(nonatomic,retain) UILabel * handsonwheellabel;
@property(nonatomic,retain) UILabel * awareofcrashlabel;
@property(nonatomic,retain) UILabel * braceyourselflabel;
@property(nonatomic,retain) UILabel * braceyourselfoptionlabel;
@property(nonatomic,retain) UILabel * furtherinjurylabel;
@property(nonatomic,retain) UITextField * injuryexplainlabel;
@property(nonatomic,retain) UILabel * patientbodylabel;
@property(nonatomic,retain) UITextField * patientbodyotherlabel;
@property(nonatomic,retain) UILabel * wearingglasslabel;
@property(nonatomic,retain) UILabel * glassesstilllabel;
@property(nonatomic,retain) UILabel * unconsiouslabel;
@property(nonatomic,retain) UITextField * unconsiousforlabel;
@property(nonatomic,retain) UITextField * propertydamagelabel;
@property(nonatomic,retain) UILabel * damagecarlabel;
@property(nonatomic,retain) UILabel * patientbodystrikelabel;
@property(nonatomic,retain) UITextField * myheadhitlabel;
@property(nonatomic,retain) UITextField * rLhiphitlabel;
@property(nonatomic,retain) UITextField * chesthitlabel;
@property(nonatomic,retain) UITextField * rlleghitlabel;
@property(nonatomic,retain) UITextField * rlshoulderhitlabel;
@property(nonatomic,retain) UITextField * rlkneehitlabel;
@property(nonatomic,retain) UITextField * rlarmhitlabel;
@property(nonatomic,retain) UITextField * otherparthitlabel;

@property (retain, nonatomic) IBOutlet UIButton *cancel;

@property (nonatomic, retain)NSMutableDictionary *staff;
@end

