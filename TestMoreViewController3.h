//
//  TestMoreViewController3.h
//  TestMore
//
//  Created by deemsys on 5/12/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "MBProgressHUD.h"

@interface TestMoreViewController3 : UIViewController<MBProgressHUDDelegate>{
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button3;
    IBOutlet UIButton *button4;
    IBOutlet UIButton *button5;
    IBOutlet UIButton *button6;
    IBOutlet UIButton *button7;
    IBOutlet UIButton *button8;
    IBOutlet UIButton *button9;
    IBOutlet UIButton *button10;
    IBOutlet UIButton *button11;
    IBOutlet UIButton *button12;
    IBOutlet UIButton *button13;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
 NSMutableDictionary *moretestdict;
    
    
NSMutableDictionary *recorddict;
}
- (IBAction)checkchange:(id)sender;


@property (strong, nonatomic) NSMutableDictionary * moretestdict;

- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;
- (IBAction)next:(id)sender;

@property (strong, nonatomic) NSMutableDictionary * recorddict;
@end
