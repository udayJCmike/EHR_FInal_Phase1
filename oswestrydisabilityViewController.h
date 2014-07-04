//
//  oswestrydisabilityViewController.h
//  oswestrydisability
//
//  Created by DeemsysInc on 3/7/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
@interface oswestrydisabilityViewController : UIViewController<MBProgressHUDDelegate>
{
    NSString *val1;
    NSString *val2;
    NSString *val3;
    NSString *val4;
    NSMutableDictionary *recorddict;
    int c;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20;
    BOOL isConnect;
    NSMutableDictionary *resultset;
    MBProgressHUD *HUD;
    NSString *temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31;
    
    IBOutlet UIButton *cancel;
    
}
@property(nonatomic,retain)NSMutableDictionary*resultset;
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property (strong, nonatomic) IBOutlet UIButton *sec11;
@property (strong, nonatomic) IBOutlet UIButton *sec12;
@property (strong, nonatomic) IBOutlet UIButton *sec13;
@property (strong, nonatomic) IBOutlet UIButton *sec14;
@property (strong, nonatomic) IBOutlet UIButton *sec15;
@property (strong, nonatomic) IBOutlet UIButton *sec16;
@property (strong, nonatomic) IBOutlet UIButton *sec21;
@property (strong, nonatomic) IBOutlet UIButton *sec22;
@property (strong, nonatomic) IBOutlet UIButton *sec23;
@property (strong, nonatomic) IBOutlet UIButton *sec24;
@property (strong, nonatomic) IBOutlet UIButton *sec25;
@property (strong, nonatomic) IBOutlet UIButton *sec26;
@property (strong, nonatomic) IBOutlet UIButton *sec31;
@property (strong, nonatomic) IBOutlet UIButton *sec32;
@property (strong, nonatomic) IBOutlet UIButton *sec33;
@property (strong, nonatomic) IBOutlet UIButton *sec34;
@property (strong, nonatomic) IBOutlet UIButton *sec35;
@property (strong, nonatomic) IBOutlet UIButton *sec36;
@property (strong, nonatomic) IBOutlet UIButton *sec41;
@property (strong, nonatomic) IBOutlet UIButton *sec42;
@property (strong, nonatomic) IBOutlet UIButton *sec43;
@property (strong, nonatomic) IBOutlet UIButton *sec44;
@property (strong, nonatomic) IBOutlet UIButton *sec45;
@property (strong, nonatomic) IBOutlet UIButton *sec46;
@property (strong, nonatomic) IBOutlet UIButton *cancel;



@end
