//
//  FootAnkleViewController.h
//  FootAnkleQuestionnaire
//
//  Created by deemsys on 3/5/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface FootAnkleViewController : UIViewController<MBProgressHUDDelegate>
{
    IBOutlet UISegmentedControl *seg1;
    IBOutlet UISegmentedControl *seg2;
    IBOutlet UISegmentedControl *seg3;
    IBOutlet UISegmentedControl *seg4;
    IBOutlet UISegmentedControl *seg5;
    IBOutlet UISegmentedControl *seg6;
    IBOutlet UISegmentedControl *seg7;
    IBOutlet UISegmentedControl *seg8;
    IBOutlet UISegmentedControl *seg9;
    
    IBOutlet UIButton *cancel;
    NSMutableDictionary *recorddict;
    
    NSString *temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30;
    NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39;
    int suc;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSMutableDictionary *resultset;
}
@property (nonatomic, retain)NSMutableDictionary *staff;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)NSMutableDictionary*resultset;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg1;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg3;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg4;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg5;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg6;

@property (retain, nonatomic) IBOutlet UISegmentedControl *seg7;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg8;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg9;
@property (retain, nonatomic) IBOutlet UIButton *reset;

@property (retain, nonatomic) IBOutlet UIButton *cancel;

- (IBAction)next:(id)sender;
- (IBAction)segbut1:(id)sender;
- (IBAction)segbut2:(id)sender;
- (IBAction)segbut3:(id)sender;
- (IBAction)segbut4:(id)sender;
- (IBAction)segbut5:(id)sender;
- (IBAction)segbut6:(id)sender;
- (IBAction)segbut7:(id)sender;
- (IBAction)segbut8:(id)sender;
- (IBAction)segbut9:(id)sender;
@end


