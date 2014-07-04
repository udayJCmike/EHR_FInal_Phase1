//
//  oswestrydisability3ViewController.h
//  oswestrydisability
//
//  Created by DeemsysInc on 3/7/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
@interface oswestrydisability3ViewController : UIViewController<MBProgressHUDDelegate>
{
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
    NSString *seg1val,*seg2val,*seg3val,*seg4val;
    BOOL isConnect;
    MBProgressHUD *HUD;
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
    
}

@property (retain, nonatomic) IBOutlet UILabel *label1;
@property (retain, nonatomic) IBOutlet UILabel *label2;
@property (retain, nonatomic) IBOutlet UILabel *label3;
@property (retain, nonatomic) IBOutlet UILabel *label4;
@property (retain, nonatomic) IBOutlet UILabel *label5;
@property (retain, nonatomic) IBOutlet UILabel *label6;
@property (retain, nonatomic) IBOutlet UILabel *label7;
@property (retain, nonatomic) IBOutlet UIImageView *lineImage;
@property (retain, nonatomic) IBOutlet UILabel *label8;
@property (retain, nonatomic) IBOutlet UILabel *label9;
@property (retain, nonatomic) IBOutlet UILabel *label10;
@property (retain, nonatomic) IBOutlet UILabel *label11;


@property (retain, nonatomic) IBOutlet UIButton *dontplay;
@property (retain, nonatomic) IBOutlet UITextField *sport;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segp1;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segp2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segp3;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segp4;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)NSMutableDictionary*resultset;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property(nonatomic,retain)IBOutlet UIButton *cancel1;
@property(nonatomic,retain)IBOutlet UIButton *cancel2;
@end
