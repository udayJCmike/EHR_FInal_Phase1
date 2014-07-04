//
//  KneeExamViewController.h
//  EHR
//
//  Created by deemsys on 2/20/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//


#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface KneeExamViewController : UIViewController<UIPickerViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    IBOutlet UILabel *gaitlabel;
    IBOutlet UITextField *datefield;
    IBOutlet UITextField *patname;
    IBOutlet UILabel *pelviclabel;
    IBOutlet UILabel *check5lab;
    IBOutlet UIPickerView *anqpicker;
    IBOutlet UILabel *anqlabel;
    IBOutlet UIPickerView *gaitpicker;
    IBOutlet UIPickerView *pelvicpicker;
    IBOutlet UILabel *check4lab;
    IBOutlet UILabel *check1lab;
    IBOutlet UILabel *check2lab;
    IBOutlet UILabel *check3lab;
    IBOutlet UITextField *check1text;
    IBOutlet UITextField *check2text;
    IBOutlet UILabel *vmo;
    IBOutlet UILabel *quadvmo;
    IBOutlet UILabel *semimem;
    IBOutlet UILabel *semitend;
    IBOutlet UILabel *Gastroc;
    IBOutlet UILabel *sol;
    IBOutlet UILabel *Illio;
    IBOutlet UILabel *biceps;
    IBOutlet UISegmentedControl *segmentnew2;
    IBOutlet UISegmentedControl *segmentnew1;
    IBOutlet UISegmentedControl *segment1;
    IBOutlet UISegmentedControl *segment2;
    IBOutlet UISegmentedControl *segment3;
    IBOutlet UITextField *flexion;
    IBOutlet UISegmentedControl *segment4;
    IBOutlet UISegmentedControl *segment5;
    IBOutlet UISegmentedControl *segment8;
    
    
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53,*temp54,*temp55,*temp56,*temp57,*temp58,*temp59,*temp60,*temp61,*temp62,*temp63,*temp64,*temp65,*temp66,*temp67,*temp68,*temp69,*temp70,*temp80,*temp71,*temp72,*temp73,*temp74,*temp75,*temp76,*temp77,*temp78,*temp79,*temp90,*temp81,*temp82,*temp83,*temp84,*temp85,*temp86,*temp87,*temp88,*temp89,*temp91,*temp92,*temp93,*temp94,*temp95,*temp96,*temp97,*temp98,*temp99,*temp101,*temp102,*temp103,*temp104,*temp105,*temp106,*temp107,*temp108,*temp109,*temp111,*temp112,*temp113,*temp114,*temp115,*temp116,*temp117,*temp110,*temp100;
    NSMutableDictionary *resultset;
    
    
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    
    IBOutlet UISegmentedControl *segment7;
    IBOutlet UISegmentedControl *segment6;
    IBOutlet UITextField *antleft;
    IBOutlet UITextField *antright;
    IBOutlet UITextField *extension;
    IBOutlet UITextField *postleft;
    IBOutlet UITextField *postright;
    IBOutlet UITextField *internalleft;
    IBOutlet UITextField *internalright;
    IBOutlet UITextField *lclleft
    ;
    IBOutlet UITextField *right4;
    IBOutlet UITextField *right3;
    IBOutlet UITextField *right2;
    IBOutlet UITextField *right1;
    IBOutlet UITextField *left4;
    IBOutlet UITextField *left3;
    IBOutlet UITextField *left2;
    IBOutlet UITextField *left1;
    IBOutlet UILabel *check6lab;
    IBOutlet UITextField *externalright;
    IBOutlet UITextField *externalleft;
    IBOutlet UITextField *patright;
    IBOutlet UITextField *patleft;
    IBOutlet UITextField *cmpright;
    IBOutlet UITextField *cmpleft;
    IBOutlet UITextField *corright;
    IBOutlet UITextField *corleft;
    IBOutlet UITextField *menisright;
    IBOutlet UITextField *menisleft;
    IBOutlet UITextField *lclright;
    IBOutlet UITextField *medright;
    IBOutlet UITextField *mclleft;
    IBOutlet UITextField *mclright;
    IBOutlet UITextField *medleft;
    
    IBOutlet UIButton *check22;
    IBOutlet UIButton *check33;
    IBOutlet UIButton *check11;
    IBOutlet UIButton *check44;
    IBOutlet UIButton *check55;
    IBOutlet UIButton *check66;
}
- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;
@property (nonatomic, strong) NSMutableArray *gaitarray;

@property (retain, nonatomic) IBOutlet UIPickerView *gaitpicker;

@property (retain, nonatomic) IBOutlet UILabel *gaitlabel;

- (IBAction)changegait:(id)sender;

- (IBAction)next:(id)sender;

@property(nonatomic,retain)NSMutableDictionary*recorddict;

@property (retain, nonatomic) IBOutlet UILabel *check4lab;

@property (retain, nonatomic) IBOutlet UIButton *check4;
- (IBAction)segment8:(id)sender;
- (IBAction)segment7:(id)sender;
- (IBAction)segment6:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segment7;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segment6;
- (IBAction)segment5:(id)sender;
- (IBAction)segment4:(id)sender;
- (IBAction)segement1:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *semimem;
- (IBAction)checkChanged:(UIButton *)sender;
- (IBAction)pelseg:(id)sender;
- (IBAction)anqseg:(id)sender;


- (IBAction)segment2:(id)sender;
- (IBAction)segment3:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segment4;
@property (retain, nonatomic) IBOutlet UITextField *datefield;

@end
