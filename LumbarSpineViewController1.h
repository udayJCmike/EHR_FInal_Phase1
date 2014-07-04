//
//  LumbarSpineViewController1.h
//  physicalexam
//
//  Created by deemsys on 2/28/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface LumbarSpineViewController1 : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    IBOutlet UIButton *check1;
    IBOutlet UIButton *check2;
    IBOutlet UIButton *check3;
    IBOutlet UIButton *check4;
    IBOutlet UIButton *check5;
    IBOutlet UIButton *check6;
    IBOutlet UIButton *check7;
    IBOutlet UIButton *check8;
    IBOutlet UIButton *check9;
    IBOutlet UIButton *check10;
    IBOutlet UIButton *check11;
    IBOutlet UIButton *check12;
    IBOutlet UIButton *check13;
    IBOutlet UIButton *check14;
    IBOutlet UISegmentedControl *seg1;
    IBOutlet UISegmentedControl *seg2;
    IBOutlet UISegmentedControl *seg3;
    IBOutlet UISegmentedControl *seg4;
    IBOutlet UISegmentedControl *seg5;
    IBOutlet UISegmentedControl *seg6;
    IBOutlet UISegmentedControl *seg7;
    IBOutlet UISegmentedControl *seg8;
    IBOutlet UISegmentedControl *seg9;
    IBOutlet UISegmentedControl *seg10;
    IBOutlet UISegmentedControl *seg11;
    IBOutlet UISegmentedControl *seg12;
    IBOutlet UISegmentedControl *seg13;
    IBOutlet UISegmentedControl *seg14;
    IBOutlet UISegmentedControl *seg15;
    IBOutlet UISegmentedControl *seg16;
    IBOutlet UISegmentedControl *seg17;
    IBOutlet UISegmentedControl *seg18;
    
    NSMutableDictionary *recorddict;
}
- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;
- (IBAction)checkchange:(UIButton*)sender;




- (IBAction)segbut1:(id)sender;
- (IBAction)segbut2:(id)sender;
- (IBAction)segbut3:(id)sender;
- (IBAction)segbut4:(id)sender;
- (IBAction)segbut5:(id)sender;
- (IBAction)segbut6:(id)sender;
- (IBAction)segbut7:(id)sender;
- (IBAction)segbut8:(id)sender;
- (IBAction)segbut9:(id)sender;
- (IBAction)segbut10:(id)sender;
- (IBAction)segbut11:(id)sender;
- (IBAction)segbut12:(id)sender;
- (IBAction)segbut13:(id)sender;
- (IBAction)segbut14:(id)sender;
- (IBAction)segbut15:(id)sender;
- (IBAction)segbut16:(id)sender;
- (IBAction)segbut17:(id)sender;
- (IBAction)segbut18:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UIButton *check17;
@property (retain, nonatomic) IBOutlet UIButton *check18;
@property (retain, nonatomic) IBOutlet UIButton *check19;
@property (retain, nonatomic) IBOutlet UIButton *check20;
@property (retain, nonatomic) IBOutlet UIButton *check21;
@property (retain, nonatomic) IBOutlet UIButton *check22;
@property (retain, nonatomic) IBOutlet UIButton *check23;
@end
