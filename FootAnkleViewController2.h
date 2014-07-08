//
//  FootAnkleViewController2.h
//  FootAnkleQuestionnaire
//
//  Created by deemsys on 3/5/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FootAnkleViewController2 : UIViewController<UIPrintInteractionControllerDelegate>
{
    IBOutlet UIButton *radi7;
    IBOutlet UIButton *radi6;
    IBOutlet UIButton *radi5;
    IBOutlet UIButton *radi4;
    IBOutlet UIButton *radi3;
    IBOutlet UIButton *radi2;
    IBOutlet UIButton *radi1;
    
    IBOutlet UIButton *cancel;
    
    
    IBOutlet UISegmentedControl *seg1;
    IBOutlet UISegmentedControl *seg2;
    IBOutlet UISegmentedControl *seg3;
    
    IBOutlet UISegmentedControl *seg4;
    IBOutlet UISegmentedControl *seg5;
    IBOutlet UISegmentedControl *seg6;
    IBOutlet UISegmentedControl *seg7;
    
    NSMutableDictionary *recorddict;
    NSMutableDictionary*resultset;
    
    
    NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39;
    int suc;
    
    
    
    
}
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
- (IBAction)rad7:(id)sender;
- (IBAction)rad6:(id)sender;
- (IBAction)rad5:(id)sender;
- (IBAction)rad4:(id)sender;
- (IBAction)rad2:(id)sender;
- (IBAction)rad1:(id)sender;
- (IBAction)rad3:(id)sender;
@property (nonatomic, retain)NSMutableDictionary *staff;

- (IBAction)next:(id)sender;
- (IBAction)segbut1:(id)sender;
- (IBAction)segbut2:(id)sender;
- (IBAction)segbut3:(id)sender;

- (IBAction)segbut4:(id)sender;
- (IBAction)segbut5:(id)sender;
- (IBAction)segbut6:(id)sender;
- (IBAction)segbut7:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)NSMutableDictionary*resultset;
@property (retain, nonatomic) IBOutlet UIButton *cancel;




@end
