//
//  shoulderpainscore2ViewController.h
//  shoulderpainscore
//
//  Created by DeemsysInc on 3/4/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "databaseurl.h"
#import "JSON.h"
@interface shoulderpainscore2ViewController : UIViewController<MBProgressHUDDelegate>
{
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
    NSString *eleventh;
    NSString*twelve;
    NSString*thirteern;
    NSString*fourteen;
    NSString*fifteen;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    int suc;
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
}
@property(nonatomic,retain)NSMutableDictionary *resultset;
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

@property (strong, nonatomic) IBOutlet UIButton *firstbut11;
@property (strong, nonatomic) IBOutlet UIButton *secondbut11;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut11;

@property (strong, nonatomic) IBOutlet UIButton *firstbut12;
@property (strong, nonatomic) IBOutlet UIButton *secondbut12;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut12;

@property (strong, nonatomic) IBOutlet UIButton *firstbut13;
@property (strong, nonatomic) IBOutlet UIButton *secondbut13;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut13;

@property (strong, nonatomic) IBOutlet UIButton *firstbut14;
@property (strong, nonatomic) IBOutlet UIButton *secondbut14;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut14;

@property (strong, nonatomic) IBOutlet UIButton *firstbut15;
@property (strong, nonatomic) IBOutlet UIButton *secondbut15;
@property (strong, nonatomic) IBOutlet UIButton *thirdbut15;
@property(strong,nonatomic)NSMutableDictionary*recorddict;

@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property(nonatomic,retain)IBOutlet UIButton *cancel1;
@property(nonatomic,retain)IBOutlet UIButton *cancel2;
@end
