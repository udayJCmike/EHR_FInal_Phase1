//
//  dcfee3ViewController.h
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>




#import "dcfee4ViewController.h"
#import "TextFieldDatePicker.h"

@interface dcfee3ViewController : UIViewController<TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
    
    NSMutableDictionary *recorddict,*resultset;
    int c;
    float calc4;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51;
    IBOutlet UITextField *supplies;
    
    IBOutlet UITextField *insurance;
    IBOutlet UITextField *testimony;
    IBOutlet UITextField *materials;
    
    IBOutlet UITextField *scoliosis;
    IBOutlet UITextField *cervicalview2;
    IBOutlet UITextField *cervicalview1;
    IBOutlet UITextField *spine;
    IBOutlet UITextField *conference;
    
    IBOutlet UITextField *page4;
    IBOutlet UITextField *wrist;
    IBOutlet UITextField *elbow;
    IBOutlet UITextField *lumbar;
    IBOutlet UITextField *pelvis;
    IBOutlet UITextField *lumbview2;
    IBOutlet UITextField *lumbview1;
    IBOutlet UITextField *thoracicview;
    IBOutlet UITextField *thoracic;
    IBOutlet UITextField *cervicalview3;
    IBOutlet UITextField *hand;
    IBOutlet UITextField *ankle;
    IBOutlet UITextField *readother;
    IBOutlet UITextField *knee;
    IBOutlet UITextField *foot;
}
- (IBAction)reset:(id)sender;

- (IBAction)cancel:(id)sender;




@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;


@property (retain, nonatomic) IBOutlet UITextField *supplies;
@property (retain, nonatomic) IBOutlet UITextField *materials;
@property (retain, nonatomic) IBOutlet UITextField *page4;

@property (retain, nonatomic) IBOutlet UITextField *testimony;
@property (retain, nonatomic) IBOutlet UITextField *insurance;
@property (retain, nonatomic) IBOutlet UITextField *conference;
@property (retain, nonatomic) IBOutlet UITextField *spine;
@property (retain, nonatomic) IBOutlet UITextField *cervicalview1;
@property (retain, nonatomic) IBOutlet UITextField *cervicalview2;
@property (retain, nonatomic) IBOutlet UITextField *cervicalview3;
@property (retain, nonatomic) IBOutlet UITextField *thoracic;
@property (retain, nonatomic) IBOutlet UITextField *thoracicview;
@property (retain, nonatomic) IBOutlet UITextField *scoliosis;
@property (retain, nonatomic) IBOutlet UITextField *lumbview1;
@property (retain, nonatomic) IBOutlet UITextField *lumbview2;
@property (retain, nonatomic) IBOutlet UITextField *pelvis;

@property (retain, nonatomic) IBOutlet UITextField *lumbar;
@property (retain, nonatomic) IBOutlet UITextField *elbow;
@property (retain, nonatomic) IBOutlet UITextField *wrist;
@property (retain, nonatomic) IBOutlet UITextField *hand;
@property (retain, nonatomic) IBOutlet UITextField *knee;

@property (retain, nonatomic) IBOutlet UITextField *ankle;

@property (retain, nonatomic) IBOutlet UITextField *foot;


@property (retain, nonatomic) IBOutlet UITextField *readother;
@property(retain,nonatomic)NSMutableDictionary *recorddict;
@property(retain,nonatomic)NSMutableDictionary *resultset;


@end
