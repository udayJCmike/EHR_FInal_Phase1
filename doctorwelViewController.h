//
//  doctorwelViewController.h
//  EHR
//
//  Created by Admin on 02/05/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MBProgressHUD.h"
@interface doctorwelViewController : UIViewController<UIAlertViewDelegate>
{
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9;
    NSMutableArray*resultset;
}
@property (retain, nonatomic) IBOutlet UIButton *pat;
@property (retain, nonatomic) IBOutlet UIButton *forms;
@property (retain, nonatomic) IBOutlet UIButton *signout;

@end
