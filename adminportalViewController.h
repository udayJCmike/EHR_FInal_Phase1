//
//  adminportalViewController.h
//  EHR
//
//  Created by DeemSysInc on 26/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBJSON.h"
#import "Recipe.h"
#import "SampleViewController.h"
#import "MBProgressHUD.h"
@interface adminportalViewController : UIViewController<UIAlertViewDelegate,MBProgressHUDDelegate>
{
int tagnumber;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9;
    UITextField *user;
    UITextField *date;
    NSMutableArray*resultset;
    MBProgressHUD *HUD;
}

@property (retain, nonatomic) IBOutlet UIButton *logout;


@end
