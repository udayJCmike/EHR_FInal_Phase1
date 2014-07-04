//
//  neckmidbackdisability1ViewController.h
//  neckmidbackdisability
//
//  Created by DeemsysInc on 3/7/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
@interface neckmidbackdisability1ViewController : UIViewController<MBProgressHUDDelegate>
{
    NSString *val5;
    NSString *val6;
    NSString *val7;
    NSString *val8;
    NSString *val9;
    int c;
    NSMutableDictionary *recorddict;
    int clicked1,clicked2,clicked3,clicked4,clicked5;
    BOOL isConnect;
    NSMutableDictionary *resultset;
    MBProgressHUD *HUD;
    
    IBOutlet UIButton *cancel;
    
}
@property (strong, nonatomic) IBOutlet UIButton *sec51;
@property (strong, nonatomic) IBOutlet UIButton *sec52;
@property (strong, nonatomic) IBOutlet UIButton *sec53;
@property (strong, nonatomic) IBOutlet UIButton *sec54;
@property (strong, nonatomic) IBOutlet UIButton *sec55;
@property (strong, nonatomic) IBOutlet UIButton *sec56;
@property (strong, nonatomic) IBOutlet UIButton *sec61;
@property (strong, nonatomic) IBOutlet UIButton *sec62;
@property (strong, nonatomic) IBOutlet UIButton *sec63;
@property (strong, nonatomic) IBOutlet UIButton *sec64;
@property (strong, nonatomic) IBOutlet UIButton *sec65;
@property (strong, nonatomic) IBOutlet UIButton *sec66;
@property (strong, nonatomic) IBOutlet UIButton *sec71;
@property (strong, nonatomic) IBOutlet UIButton *sec72;
@property (strong, nonatomic) IBOutlet UIButton *sec73;
@property (strong, nonatomic) IBOutlet UIButton *sec74;
@property (strong, nonatomic) IBOutlet UIButton *sec75;
@property (strong, nonatomic) IBOutlet UIButton *sec76;
@property (strong, nonatomic) IBOutlet UIButton *sec81;
@property (strong, nonatomic) IBOutlet UIButton *sec82;
@property (strong, nonatomic) IBOutlet UIButton *sec83;
@property (strong, nonatomic) IBOutlet UIButton *sec84;
@property (strong, nonatomic) IBOutlet UIButton *sec85;
@property (strong, nonatomic) IBOutlet UIButton *sec86;
@property (strong, nonatomic) IBOutlet UIButton *sec91;
@property (strong, nonatomic) IBOutlet UIButton *sec92;
@property (strong, nonatomic) IBOutlet UIButton *sec93;
@property (strong, nonatomic) IBOutlet UIButton *sec94;
@property (strong, nonatomic) IBOutlet UIButton *sec95;
@property (strong, nonatomic) IBOutlet UIButton *sec96;
@property(nonatomic,retain) NSMutableDictionary *recorddict;
@property (retain, nonatomic) IBOutlet UIButton *next;
@property(nonatomic,retain)NSMutableDictionary*resultset;
@property (retain, nonatomic) IBOutlet UIButton *cancel;


@end


