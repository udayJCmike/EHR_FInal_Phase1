//
//  wristandhanddisability2ViewController.h
//  wristandhanddisability
//
//  Created by DeemsysInc on 3/5/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
@interface wristandhanddisability2ViewController : UIViewController<MBProgressHUDDelegate>
{
    int aa,bb,result,cc;
    float exe;
    NSString *val10;
    NSMutableDictionary*recorddict;
    NSMutableDictionary*resultset;
    BOOL isConnect;
    MBProgressHUD *HUD;
    
    IBOutlet UIButton *cancel1;
    
    IBOutlet UIButton *cancel2;
}
@property (strong, nonatomic) IBOutlet UIButton *sec101;
@property (strong, nonatomic) IBOutlet UIButton *sec102;
@property (strong, nonatomic) IBOutlet UIButton *sec103;
@property (strong, nonatomic) IBOutlet UIButton *sec104;
@property (strong, nonatomic) IBOutlet UIButton *sec105;
@property (strong, nonatomic) IBOutlet UIButton *sec106;
@property(strong,nonatomic) NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UISlider *painscale;
@property (retain, nonatomic) IBOutlet UILabel *painscalelab;
@property (retain, nonatomic) IBOutlet UILabel *disab;
@property(nonatomic,retain)NSMutableDictionary*resultset;

@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;

@property (retain, nonatomic) IBOutlet UIButton *cancel1;

@property (retain, nonatomic) IBOutlet UIButton *cancel2;

@end
