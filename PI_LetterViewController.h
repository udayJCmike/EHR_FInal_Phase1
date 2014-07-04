//
//  PI_LetterViewController.h
//  PI_Letter
//
//  Created by Admin on 27/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"


@interface PI_LetterViewController : UIViewController<TextFieldDatePickerDelegate>
{
    int a;
    IBOutlet UITextField *date;
    IBOutlet UITextField *client;
    IBOutlet UITextField *accident;
    IBOutlet UITextField *dr;
    IBOutlet UITextField *sign;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7;
    NSMutableDictionary *recorddict;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@end
