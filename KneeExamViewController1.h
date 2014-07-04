//
//  KneeExamViewController1.h
//  EHR
//
//  Created by deemsys on 2/21/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"


@interface KneeExamViewController1 : UIViewController<UIPickerViewDelegate,UITextViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    IBOutlet UITextField *sensleft;
    IBOutlet UITextField *sensright;
    IBOutlet UITextField *motorleft;
    IBOutlet UITextField *motorright;
    IBOutlet UITextField *sensel2left;
    IBOutlet UITextField *sensl2right;
    IBOutlet UITextField *motorl2left;
    IBOutlet UITextField *motorl2right;
    IBOutlet UITextField *sensl3left;
    IBOutlet UITextField *sensl3right;
    IBOutlet UITextField *motorl3left;
    IBOutlet UITextField *motorl3right;
    IBOutlet UITextField *sensl4left;
    IBOutlet UITextField *sensl4right;
    IBOutlet UITextField *motorl4left;
    IBOutlet UITextField *motorl4right;
    IBOutlet UITextField *refl4left;
    IBOutlet UITextField *refl4right;
    IBOutlet UITextField *refl5left;
    IBOutlet UITextField *refl5right;
    IBOutlet UITextField *refsileft;
    IBOutlet UITextField *refsiright;
    IBOutlet UITextField *motorl5left;
    IBOutlet UITextField *motorsileft;
    IBOutlet UITextField *motorsiright;
    IBOutlet UITextField *motorl5right;
    IBOutlet UITextField *sensel5left;
    IBOutlet UITextField *sensel5right;
    IBOutlet UITextField *sensileft;
    IBOutlet UITextField *sensiright;
    NSMutableDictionary *temp;
    NSMutableDictionary *recorddict;
    IBOutlet UILabel *stairslab;
    IBOutlet UILabel *standlab;
    IBOutlet UILabel *walklab;
    IBOutlet UILabel *neuro;
    
    NSMutableDictionary *resultset;
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    IBOutlet UISegmentedControl *segpat;
    
    IBOutlet UITextView *addcomments;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53,*temp54,*temp55,*temp56,*temp57,*temp58,*temp59,*temp60,*temp61,*temp62,*temp63,*temp64,*temp65,*temp66,*temp67,*temp68,*temp69,*temp70,*temp80,*temp71,*temp72,*temp73,*temp74,*temp75,*temp76,*temp77,*temp78,*temp79,*temp90,*temp81,*temp82,*temp83,*temp84,*temp85,*temp86,*temp87,*temp88,*temp89,*temp91,*temp92,*temp93,*temp94,*temp95,*temp96,*temp97,*temp98,*temp99,*temp101,*temp102,*temp103,*temp104,*temp105,*temp106,*temp107,*temp108,*temp109,*temp111,*temp112,*temp113,*temp114,*temp115,*temp116,*temp117,*temp110,*temp100;
}

@property(retain, nonatomic)NSMutableDictionary *resultset;

- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *other1;
@property (retain, nonatomic) IBOutlet UIButton *check5;

- (IBAction)pickselect:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *check4;
@property (retain, nonatomic) IBOutlet UIButton *check3;
@property (retain, nonatomic) IBOutlet UIButton *check1;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (nonatomic, strong) NSMutableArray *patcarearray;

- (IBAction)check1:(UIButton*)sender;
@property (retain, nonatomic) IBOutlet UIButton *check2;
- (IBAction)nextact:(id)sender;

@end
