//
//  WelcomeViewController.h
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface WelcomeViewController : UIViewController<MBProgressHUDDelegate>
{
    
    int typeofaccident;
    IBOutlet UIButton *autoaccident;
    IBOutlet UIButton *workaccident;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSMutableDictionary *hardshipdatas;
    NSString*temp;
    
    
}
@property (retain, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property(retain,nonatomic)NSMutableDictionary*hardshipdatas;
@property (retain, nonatomic) IBOutlet UIButton *consenttotreat;
@property (retain, nonatomic) IBOutlet UIButton *consenttotreatminor;
@end
