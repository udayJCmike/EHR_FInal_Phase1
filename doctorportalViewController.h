//
//  doctorportalViewController.h
//  EHR
//
//  Created by DeemSysInc on 26/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
@interface doctorportalViewController : UIViewController<MBProgressHUDDelegate>
{
    MBProgressHUD *HUD;
    NSArray *table_name;
}
@property (retain, nonatomic) IBOutlet UIButton *physical;
@property (retain, nonatomic) IBOutlet UIButton *radiologic;
@property (retain, nonatomic) IBOutlet UIButton *initial;
@property (retain, nonatomic) IBOutlet UIButton *soapnotes;

@end
