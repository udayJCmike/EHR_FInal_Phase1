//
//  dcfee1ViewController.h
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "dcfee2ViewController.h"
#import "TextFieldDatePicker.h"


@interface dcfee1ViewController : UIViewController<TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
    NSMutableDictionary *recorddict,*resultset;
    int c;
    float calc;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51;
    
    IBOutlet UITextField *unlisted;
    IBOutlet UITextField *ultrasound;
    IBOutlet UITextField *contrastbaths;
    IBOutlet UITextField *iontophoresis;
    IBOutlet UITextField *stim;
    IBOutlet UITextField *hydrotheraphy;
    IBOutlet UITextField *mechanical;
    
    
    IBOutlet UITextField *infrared;
    IBOutlet UITextField *diathermy;
    IBOutlet UITextField *microwave;
    IBOutlet UITextField *bath;
    IBOutlet UITextField *device;
    IBOutlet UITextField *unattended;
    
    IBOutlet UITextField *ultraviolet;
    IBOutlet UITextField *therapy;
    IBOutlet UITextField *re;
    IBOutlet UITextField *exersice;
    IBOutlet UITextField *gait;
    IBOutlet UITextField *massage;
    
    IBOutlet UITextField *page2;
    IBOutlet UITextField *other;
    IBOutlet UITextField *manualtheraphy;
    
    IBOutlet UITextField *grouptheraphy;
}
- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *mechanical;
@property (retain, nonatomic) IBOutlet UITextField *unattended;
@property (retain, nonatomic) IBOutlet UITextField *device;
@property (retain, nonatomic) IBOutlet UITextField *bath;
@property (retain, nonatomic) IBOutlet UITextField *microwave;
@property (retain, nonatomic) IBOutlet UITextField *hydrotheraphy;
@property (retain, nonatomic) IBOutlet UITextField *diathermy;
@property (retain, nonatomic) IBOutlet UITextField *infrared;
@property (retain, nonatomic) IBOutlet UITextField *ultraviolet;
@property (retain, nonatomic) IBOutlet UITextField *stim;
@property (retain, nonatomic) IBOutlet UITextField *iontophoresis;
@property (retain, nonatomic) IBOutlet UITextField *contrastbaths;
@property (retain, nonatomic) IBOutlet UITextField *ultrasound;
@property (retain, nonatomic) IBOutlet UITextField *unlisted;
@property (retain, nonatomic) IBOutlet UITextField *exersice;
@property (retain, nonatomic) IBOutlet UITextField *re;

@property (retain, nonatomic) IBOutlet UITextField *therapy;
@property (retain, nonatomic) IBOutlet UITextField *gait;
@property (retain, nonatomic) IBOutlet UITextField *massage;
@property (retain, nonatomic) IBOutlet UITextField *manualtheraphy;
@property (retain, nonatomic) IBOutlet UITextField *other;
@property (retain, nonatomic) IBOutlet UITextField *grouptheraphy;
@property( retain, nonatomic)NSMutableDictionary *recorddict;
@property( retain, nonatomic)NSMutableDictionary *resultset;

@property (retain, nonatomic) IBOutlet UITextField *page2;
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
- (IBAction)next:(id)sender;

@end
