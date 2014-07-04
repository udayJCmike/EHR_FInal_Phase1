//
//  doctorloginViewController.h
//  EHR
//
//  Created by DeemSysInc on 24/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "JSON.h"

@interface doctorloginViewController : UIViewController<MBProgressHUDDelegate>
{
    int a;
    MBProgressHUD *HUD;
    BOOL isConnect;
}
@property (retain, nonatomic) IBOutlet UITextField *username;
@property (retain, nonatomic) IBOutlet UITextField *password;
@end
