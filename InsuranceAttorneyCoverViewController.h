//
//  InsuranceAttorneyCoverViewController.h
//  MedPay
//
//  Created by deemsys on 3/1/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
@interface InsuranceAttorneyCoverViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate>
{
IBOutlet UITextField *patname;
IBOutlet UITextView *addrs;
IBOutlet UITextField *patattory;
IBOutlet UITextField *reg;
IBOutlet UITextField *dofacc;
IBOutlet UITextField *dearname;
IBOutlet UITextField *sincname;
IBOutlet UITextField *physicianname;
NSMutableDictionary *recorddict;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UILabel *mail;
- (IBAction)submit:(id)sender;



@end

