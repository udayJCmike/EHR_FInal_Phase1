//
//  shoulderpainscore1ViewController.h
//  shoulderpainscore
//
//  Created by DeemsysInc on 3/4/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface shoulderpainscore1ViewController : UIViewController<TextFieldDatePickerDelegate>
{
    int a;
    NSString *firstrow;
    NSString *secondrow;
    NSString *thirdrow;
    NSString*fourthrow;
    NSString*fifthrow;
    NSString*sixthrow;
    NSString*seventhrow;
    NSString*eighthrow;
    NSString*ninethrow;
    NSString*tenthrow;
    NSMutableDictionary*recorddict;
    NSString *headresult;
    NSString*painresult;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5;
    NSMutableDictionary *resultset;
    
    IBOutlet UIButton *cancel;
    
    
    
}
@property(nonatomic,retain)NSMutableDictionary *resultset;

@property (strong, nonatomic) IBOutlet UITextField *date;
@property (strong, nonatomic) IBOutlet UITextField *scoretotal;
@property (strong, nonatomic) IBOutlet UITextField *f48;
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *age;
@property (strong, nonatomic) IBOutlet UISegmentedControl *headacheseg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *painseg;

@property (strong, nonatomic) IBOutlet UIButton *firstbut;
@property (strong, nonatomic) IBOutlet UIButton *secondbut;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut;

@property (strong, nonatomic) IBOutlet UIButton *secondf;
@property (strong, nonatomic) IBOutlet UIButton *seconds;
@property (strong, nonatomic) IBOutlet UIButton *secondt;

@property (strong, nonatomic) IBOutlet UIButton *firstbut3;
@property (strong, nonatomic) IBOutlet UIButton *secondbut3;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut3;

@property (strong, nonatomic) IBOutlet UIButton *firstbut4;
@property (strong, nonatomic) IBOutlet UIButton *secondbut4;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut4;

@property (strong, nonatomic) IBOutlet UIButton *firstbut5;
@property (strong, nonatomic) IBOutlet UIButton *secondbut5;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut5;

@property (strong, nonatomic) IBOutlet UIButton *firstbut6;
@property (strong, nonatomic) IBOutlet UIButton *secondbut6;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut6;

@property (strong, nonatomic) IBOutlet UIButton *firstbut7;
@property (strong, nonatomic) IBOutlet UIButton *secondbut7;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut7;

@property (strong, nonatomic) IBOutlet UIButton *firstbut8;
@property (strong, nonatomic) IBOutlet UIButton *secondbut8;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut8;

@property (strong, nonatomic) IBOutlet UIButton *firstbut9;
@property (strong, nonatomic) IBOutlet UIButton *secondbut9;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut9;

@property (strong, nonatomic) IBOutlet UIButton *firstbut10;
@property (strong, nonatomic) IBOutlet UIButton *secondbut10;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut10;
@property(strong,nonatomic)NSMutableDictionary*recorddict;
@property (strong, nonatomic) IBOutlet UIButton *cancel;



@end
