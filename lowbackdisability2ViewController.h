//
//  lowbackdisability2ViewController.h
//  lowbackdisability
//
//  Created by DeemsysInc on 3/6/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface lowbackdisability2ViewController : UIViewController<UITextViewDelegate,MBProgressHUDDelegate>
{
    int aa,bb,result,cc;
    float exe;
    NSString *val10;
    int move;
    NSMutableDictionary*recorddict;
    NSMutableDictionary*resultset;
    int noofattend,noofattend1;
    int result1;
    int clicked1;
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
@property(strong,nonatomic) NSMutableDictionary*resultset;
@property (strong, nonatomic) IBOutlet UILabel *disab;
@property (strong, nonatomic) IBOutlet UIButton *calculate;
@property (strong, nonatomic) IBOutlet UITextView *comments;
@property (strong, nonatomic) IBOutlet UIButton *save;
@property(nonatomic,retain)IBOutlet UIButton *submit;
@property(nonatomic,retain)IBOutlet UIButton *update;
@property(nonatomic,retain)IBOutlet UIButton *deleteform;
@property(nonatomic,retain)IBOutlet UIButton *reset1;
@property(nonatomic,retain)IBOutlet UIButton *reset2;
@property(nonatomic,retain)IBOutlet UIButton *cancel1;
@property(nonatomic,retain)IBOutlet UIButton *cancel2;


@end
