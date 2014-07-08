//
//  hamil5ViewController.h
//  hamil
//
//  Created by Admin on 06/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface hamil5ViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    IBOutlet UIButton *b1;
    IBOutlet UIButton *b2;
    IBOutlet UIButton *b3;
    IBOutlet UIButton *b4;
    IBOutlet UIButton *b5;
    IBOutlet UIButton *b6;
    IBOutlet UIButton *b7;
    IBOutlet UIButton *b8;
    IBOutlet UIButton *b9;
    IBOutlet UIButton *b10;
    IBOutlet UIButton *b11;
    IBOutlet UIButton *b12;
    IBOutlet UIButton *b13;
    IBOutlet UIButton *b14;
    IBOutlet UIButton *b15;
    IBOutlet UIButton *b16;
    IBOutlet UIButton *b17;
    IBOutlet UIButton *b18;
    IBOutlet UIButton *b19;
    IBOutlet UIButton *b20;
    IBOutlet UIButton *b21;
    IBOutlet UIButton *b22;
    IBOutlet UIButton *b23;
    IBOutlet UIButton *b24;
    IBOutlet UIButton *b25;
    IBOutlet UIButton *b26;
    IBOutlet UIButton *b27;
    IBOutlet UIButton *b28;
    IBOutlet UIButton *b29;
    IBOutlet UIButton *b30;
    IBOutlet UIButton *b31;
    IBOutlet UIButton *b32;
    IBOutlet UIButton *b33;
    IBOutlet UIButton *b34;
    IBOutlet UIButton *b35;
    IBOutlet UIButton *b36;
    IBOutlet UIButton *b37;
    IBOutlet UIButton *b38;
    IBOutlet UIButton *b39;
    IBOutlet UIButton *b40;
    IBOutlet UIButton *b41;
    IBOutlet UIButton *b42;
    IBOutlet UIButton *b43;
    IBOutlet UIButton *b44;
    IBOutlet UIButton *b45;
    IBOutlet UIButton *b46;
    IBOutlet UIButton *b47;
    IBOutlet UIButton *b48;
    IBOutlet UIButton *b49;
    IBOutlet UIButton *b50;
    int a;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *moretestdict;
    
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
}


@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;


- (IBAction)alenright:(id)sender;
- (IBAction)allenleft:(id)sender;
@property(nonatomic,retain) NSMutableDictionary *moretestdict;
@property (retain, nonatomic) IBOutlet UISegmentedControl *drawer1right;
@property (retain, nonatomic) IBOutlet UISegmentedControl *drawaer1left;
- (IBAction)drawer1right:(id)sender;
- (IBAction)drawer1left:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *valvarright;
- (IBAction)valvararight:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *valvarleft;
- (IBAction)valvaraleft:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *apleysright;
@property (retain, nonatomic) IBOutlet UISegmentedControl *apleysleft;
- (IBAction)apleysright:(id)sender;
- (IBAction)apleysleft:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *drawer2right;
- (IBAction)draer2right:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *drawer2left;
- (IBAction)drawer2left:(id)sender;




- (IBAction)vallrightty:(id)sender;
- (IBAction)valgright:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *valgleft;
@property (retain, nonatomic) IBOutlet UISegmentedControl *valgright;
@property (retain, nonatomic) IBOutlet UISegmentedControl *allenleft;
@property (retain, nonatomic) IBOutlet UISegmentedControl *allenright;

- (IBAction)ligl:(id)sender;
- (IBAction)ligr:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *ligsegl;
@property (retain, nonatomic) IBOutlet UISegmentedControl *ligsegr;
- (IBAction)cancel:(id)sender;
- (IBAction)moreteset:(id)sender;
- (IBAction)reset:(id)sender;
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@end
