//
//  PaindiagramViewController.h
//  EHR
//
//  Created by DeemsysInc on 13/06/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "MBProgressHUD.h"
#import "TextFieldDatePicker.h"
@class DragDropManager;
@interface PaindiagramViewController : UIViewController<MBProgressHUDDelegate,TextFieldDatePickerDelegate,UIPrintInteractionControllerDelegate>
{
@private
UIView * _viewA;
UIView * _viewB;
UIView * _viewC;
UIView * _viewD;
UIView * _viewE;
UIView * _viewF;
UIView * _viewY;
UIView * _viewZ;
    BOOL isConnect;
    MBProgressHUD *HUD;
NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20;
UIView *_dragdroppin1;
UIView *_dragdroppin2;
UIView *_dragdroppin3;
UIView *_dragdroppin4;
NSMutableDictionary *recorddict;
DragDropManager *_dragDropManager;
IBOutlet UITextField *name;
IBOutlet UITextField *number;
IBOutlet UITextField *date;
}

@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
- (IBAction)save:(id)sender;
@property(nonatomic, retain) UIView *viewA;
@property(nonatomic, retain) UIView *viewB;
@property(nonatomic, retain) UIView *viewC;
@property(nonatomic, retain) UIView *viewD;
@property(nonatomic, retain) UIView *viewE;
@property(nonatomic, retain) UIView *viewF;

@property(nonatomic, retain) UIView *viewY;
@property(nonatomic, retain) UIView *viewZ;
@property(nonatomic, retain) UIView *dragdroppin1;
@property(nonatomic, retain) UIView *dragdroppin2;
@property(nonatomic, retain) UIView *dragdroppin3;
@property(nonatomic, retain) UIView *dragdroppin4;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic, retain) DragDropManager *dragDropManager;
@property (retain, nonatomic) IBOutlet UIButton *sace;

@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;
@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *reset2;
@property (nonatomic, retain)NSMutableDictionary *staff;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *deleteform;

@end
