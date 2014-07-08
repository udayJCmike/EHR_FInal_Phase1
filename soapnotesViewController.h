//
//  soapnotesViewController.h
//  soapnotes
//
//  Created by Admin on 10/05/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface soapnotesViewController : UIViewController<UIPrintInteractionControllerDelegate>
{
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
    NSString *seg1val;
    NSString *seg2val;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50;
}
@property (strong, nonatomic) IBOutlet UIButton *but1;
@property (strong, nonatomic) IBOutlet UIButton *but2;
@property (strong, nonatomic) IBOutlet UIButton *but3;
@property (strong, nonatomic) IBOutlet UIButton *but4;
@property (strong, nonatomic) IBOutlet UIButton *but5;
@property (strong, nonatomic) IBOutlet UIButton *but6;
@property (strong, nonatomic) IBOutlet UIButton *but7;
@property (strong, nonatomic) IBOutlet UIButton *but8;
@property (strong, nonatomic) IBOutlet UIButton *but9;
@property (strong, nonatomic) IBOutlet UIButton *but10;
@property (strong, nonatomic) IBOutlet UIButton *but11;
@property (strong, nonatomic) IBOutlet UIButton *but12;
@property (strong, nonatomic) IBOutlet UIButton *but13;
@property (strong, nonatomic) IBOutlet UIButton *but14;
@property (strong, nonatomic) IBOutlet UIButton *but15;
@property (strong, nonatomic) IBOutlet UIButton *but16;
@property (strong, nonatomic) IBOutlet UIButton *but17;
@property (strong, nonatomic) IBOutlet UIButton *but18;
@property (strong, nonatomic) IBOutlet UIButton *but19;
@property (strong, nonatomic) IBOutlet UIButton *but20;
@property (strong, nonatomic) IBOutlet UIButton *but21;
@property (strong, nonatomic) IBOutlet UIButton *but22;
@property (strong, nonatomic) IBOutlet UIButton *but23;
@property (strong, nonatomic) IBOutlet UIButton *but24;
@property (strong, nonatomic) IBOutlet UIButton *but25;
@property (strong, nonatomic) IBOutlet UIButton *but26;
@property (strong, nonatomic) IBOutlet UIButton *but27;
@property (strong, nonatomic) IBOutlet UIButton *but28;
@property (strong, nonatomic) IBOutlet UIButton *but29;
@property (strong, nonatomic) IBOutlet UIButton *but30;
@property (strong, nonatomic) IBOutlet UIButton *but31;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg1;
@property (retain, nonatomic) IBOutlet UISegmentedControl *seg2;
@property (retain, nonatomic) IBOutlet UIButton *save;

@property (retain, nonatomic) IBOutlet UISlider *painscale2;
@property (retain, nonatomic) IBOutlet UILabel *val2;
@property (retain, nonatomic) IBOutlet UILabel *val1;
@property (retain, nonatomic) IBOutlet UISlider *painscale1;
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@property (strong, nonatomic) IBOutlet UILabel *name;
@end
