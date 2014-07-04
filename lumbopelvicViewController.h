//
//  lumbopelvicViewController.h
//  EHR
//
//  Created by DeemsysInc on 2/27/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface lumbopelvicViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    
    int a,c;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSMutableDictionary *resultset;
    NSMutableDictionary *recorddict;
    NSMutableArray*selectedcheckbox;
    IBOutlet UIButton *PALPATION;
    IBOutlet UIButton *FUNCTIONAL;
    IBOutlet UIButton *SUBLUX;
    IBOutlet UIButton *ORTHO;
    IBOutlet UIButton *NEURO;
    NSString *selectgait;
    NSString *selectpelvic;
    IBOutlet UITextField *date;
    
    IBOutlet UILabel *palunrem;
    IBOutlet UILabel *fununrem;
    IBOutlet UILabel *subunrem;
    IBOutlet UILabel *orthun;
    IBOutlet UILabel *neuunrem;
    //  IBOutlet UILabel *gaitArray;
    // IBOutlet UILabel *gaitl;
    
    IBOutlet UIButton *rightbut;
    IBOutlet UIButton *leftbut;
    IBOutlet UISegmentedControl *leftseg;
    IBOutlet UISegmentedControl *rightseg;
    IBOutlet UISegmentedControl *segmentSwitch;
    IBOutlet UISegmentedControl *piri;
    IBOutlet UISegmentedControl *glu;
    IBOutlet UISegmentedControl *lli;
    IBOutlet UISegmentedControl *quad;
    IBOutlet UISegmentedControl *glutes;
    IBOutlet UISegmentedControl *rect;
    IBOutlet UISegmentedControl *para;
    IBOutlet UISegmentedControl *ham;
    IBOutlet UISegmentedControl *obli;
    IBOutlet UIPickerView *gait;
    IBOutlet UIPickerView *pelvic;
    IBOutlet UITextField *lefoth;
    IBOutlet UITextField *rigoth;
    
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53,*temp54,*temp55,*temp56,*temp57,*temp58,*temp59,*temp60,*temp61,*temp62,*temp63,*temp64,*temp65,*temp66,*temp67,*temp68,*temp69,*temp70;
    
    NSString *AO;
    NSString *Piriforms;
    NSString *GluteusMaximus;
    NSString *lliopsoas;
    NSString *QuadLumb;
    NSString *GluteusMedius;
    NSString *RectusAbdominis;
    NSString *Paraspinals;
    NSString *Hamstrings;
    NSString *Obliques;
    NSString *left;
    NSString *right;
    
    
    
}
@property(nonatomic,retain) NSMutableDictionary *resultset;
@property (nonatomic, strong) NSArray *gaitArray;
- (IBAction)reset:(id)sender;
@property (nonatomic, strong) NSArray *pelvicArray;
- (IBAction)cancel:(id)sender;

@property (retain, nonatomic) IBOutlet UIPickerView *gait;
@property (retain, nonatomic) IBOutlet UIPickerView *pelvic;

@property (retain, nonatomic) IBOutlet UILabel *selectgait;
@property (retain, nonatomic) IBOutlet UILabel *selectpelvic;

@property (strong, nonatomic) IBOutlet UITextField *patientname;
@property (strong, nonatomic) IBOutlet UITextField *othernotes;
@property (strong, nonatomic) IBOutlet UITextField *flexion;
@property (strong, nonatomic) IBOutlet UITextField *extension;
@property (strong, nonatomic) IBOutlet UITextField *lateralL;
@property (strong, nonatomic) IBOutlet UITextField *lateralR;
@property (strong, nonatomic) IBOutlet UITextField *rotationL;
@property (strong, nonatomic) IBOutlet UITextField *rotationR;
@property (strong, nonatomic) IBOutlet UITextField *T8_9;
@property (strong, nonatomic) IBOutlet UITextField *T10_11;
@property (strong, nonatomic) IBOutlet UITextField *T12_L1;
@property (strong, nonatomic) IBOutlet UITextField *L2_3;
@property (strong, nonatomic) IBOutlet UITextField *L4_5;
@property (strong, nonatomic) IBOutlet UITextField *LSI;
@property (strong, nonatomic) IBOutlet UITextField *T9_10;
@property (strong, nonatomic) IBOutlet UITextField *T11_12;
@property (strong, nonatomic) IBOutlet UITextField *L1_2;
@property (strong, nonatomic) IBOutlet UITextField *L3_4;
@property (strong, nonatomic) IBOutlet UITextField *L5_SI;
@property (strong, nonatomic) IBOutlet UITextField *RSI;
@property (strong, nonatomic) IBOutlet UITextField *trendL;
@property (strong, nonatomic) IBOutlet UITextField *trendR;
@property (strong, nonatomic) IBOutlet UITextField *kempL;
@property (strong, nonatomic) IBOutlet UITextField *kempR;
@property (strong, nonatomic) IBOutlet UITextField *slumpL;
@property (strong, nonatomic) IBOutlet UITextField *slumpR;
@property (strong, nonatomic) IBOutlet UITextField *straightlegL;
@property (strong, nonatomic) IBOutlet UITextField *straightlegR;
@property (strong, nonatomic) IBOutlet UITextField *welllegL;
@property (strong, nonatomic) IBOutlet UITextField *welllegR;
@property (strong, nonatomic) IBOutlet UITextField *nachelsL;
@property (strong, nonatomic) IBOutlet UITextField *nachelsR;
@property (strong, nonatomic) IBOutlet UITextField *positive;
@property (strong, nonatomic) IBOutlet UITextField *positive_adam;
@property (strong, nonatomic) IBOutlet UITextField *L1L;
@property (strong, nonatomic) IBOutlet UITextField *L1R;
@property (strong, nonatomic) IBOutlet UITextField *L2L;
@property (strong, nonatomic) IBOutlet UITextField *L2R;
@property (strong, nonatomic) IBOutlet UITextField *L3L;
@property (strong, nonatomic) IBOutlet UITextField *L3RR;
@property (strong, nonatomic) IBOutlet UITextField *L4L;
@property (strong, nonatomic) IBOutlet UITextField *L4R;
@property (strong, nonatomic) IBOutlet UITextField *L5L;
@property (strong, nonatomic) IBOutlet UITextField *L5R;
@property (strong, nonatomic) IBOutlet UITextField *SIL;
@property (strong, nonatomic) IBOutlet UITextField *SIR;
@property (strong, nonatomic) NSMutableDictionary * recorddict;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segmentSwitch;
@property (retain, nonatomic) IBOutlet UISegmentedControl *piri;
@property (retain, nonatomic) IBOutlet UISegmentedControl *glu;
@property (retain, nonatomic) IBOutlet UISegmentedControl *lli;
@property (retain, nonatomic) IBOutlet UISegmentedControl *quad;
@property (retain, nonatomic) IBOutlet UISegmentedControl *glutes;
@property (retain, nonatomic) IBOutlet UISegmentedControl *rect;
@property (retain, nonatomic) IBOutlet UISegmentedControl *para;
@property (retain, nonatomic) IBOutlet UISegmentedControl *ham;
@property (retain, nonatomic) IBOutlet UISegmentedControl *obli;
@property (retain, nonatomic) IBOutlet UISegmentedControl *gaitseg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *pelvicseg;
@property (retain, nonatomic) IBOutlet UIButton *leftbut;
@property (retain, nonatomic) IBOutlet UIButton *rightbut;

- (IBAction)NEXT:(id)sender;


- (IBAction)selectgait:(id)sender;

@end
