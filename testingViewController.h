//
//  testingViewController.h
//  EHR
//
//  Created by DeemsysInc on 11/8/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
@interface testingViewController : UIViewController<TextFieldDatePickerDelegate>
@property (strong, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@end
