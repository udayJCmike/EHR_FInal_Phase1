//
//  RegisterViewController.h
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MBProgressHUD.h"
#import "TWMessageBarManager.h"
@interface RegisterViewController : UIViewController<MBProgressHUDDelegate>
{
    IBOutlet UITextField *email;
    IBOutlet UISegmentedControl * rolesegment;
    
    NSMutableDictionary * recorddict;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSString *temp,*temp1,*temp2,*temp3;
    IBOutlet UITextField *username;
    NSString *role;
    
    IBOutlet UITextField *pass;
    
    IBOutlet UITextField *cpass;
    int a;
}
-(IBAction)registerkey:(id)sender;
-(IBAction)rolechange:(id)sender;
@end
