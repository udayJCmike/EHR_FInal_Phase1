//
//  dcfee4ViewController.h
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "dcfee4ViewController.h"
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface dcfee4ViewController : UIViewController<TextFieldDatePickerDelegate,MBProgressHUDDelegate,UITextFieldDelegate>
{
    NSMutableDictionary *recorddict,*resultset;
    int c;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51;
    IBOutlet UIButton *cash;
    float a,b,d;
    float calc1,calc2,calc3,calc4;
    IBOutlet UIButton *check;
    IBOutlet UITextField *orthoticleft;
    IBOutlet UITextField *lumbarsupport;
    IBOutlet UITextField *pillow;
    IBOutlet UITextField *orthoticright;
    IBOutlet UITextField *tensunit;
    IBOutlet UITextField *coldpack;
    IBOutlet UITextField *wristsplint;
    IBOutlet UITextField *heellift;
    IBOutlet UITextField *exerciseball;
    IBOutlet UITextField *exerciseband;
    IBOutlet UITextField *unlisteditem;
    IBOutlet UITextField *charges;
    IBOutlet UITextField *less;
    IBOutlet UITextField *date;
    IBOutlet UILabel *chargeslabel;
    
    
    NSString *databasePath;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    
    
    
    IBOutlet UITextField *amt;
    IBOutlet UITextField *balance;
    
    IBOutlet UILabel *balancelabel;
}

@property (retain, nonatomic) IBOutlet UISegmentedControl *seggy;

- (IBAction)segchange:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *chargelabtext;

@property (retain, nonatomic) IBOutlet UIButton *checkbut1;

@property (retain, nonatomic) IBOutlet UIButton *checkbut2;

@property (retain, nonatomic) IBOutlet UIButton *checkbut3;
@property (retain, nonatomic) IBOutlet UIButton *checkbut4;

@property (retain, nonatomic) IBOutlet UILabel *check1;
@property (retain, nonatomic) IBOutlet UILabel *check2;
@property (retain, nonatomic) IBOutlet UILabel *check3;
@property (retain, nonatomic) IBOutlet UILabel *check4;

@property (retain, nonatomic) IBOutlet UILabel *cardholderlab;

@property (retain, nonatomic) IBOutlet UITextField *cardownersig;

- (IBAction)checkchange:(id)sender;

@property (retain, nonatomic) IBOutlet UIButton *backbut;

@property (retain, nonatomic) IBOutlet UIButton *save;
@property (retain, nonatomic) IBOutlet UIButton *cancel;

@property (retain, nonatomic) IBOutlet UIButton *reset;

@property (retain, nonatomic) IBOutlet UIButton *deletefuc;


@property (retain, nonatomic) IBOutlet UIButton *update;

@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *reset1;

- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)deletefuc:(id)sender;

- (IBAction)reset:(id)sender;

@property (retain, nonatomic) IBOutlet UITextField *pillow;
@property (retain, nonatomic) IBOutlet UITextField *lumbarsupport;
@property (retain, nonatomic) IBOutlet UITextField *orthoticleft;
@property (retain, nonatomic) IBOutlet UITextField *orthoticright;
@property (retain, nonatomic) IBOutlet UITextField *tensunit;
@property (retain, nonatomic) IBOutlet UITextField *coldpack;
@property (retain, nonatomic) IBOutlet UITextField *wristsplint;
@property (retain, nonatomic) IBOutlet UITextField *heellift;
@property (retain, nonatomic) IBOutlet UITextField *exerciseball;
@property (retain, nonatomic) IBOutlet UITextField *exerciseband;
@property (retain, nonatomic) IBOutlet UITextField *unlisteditem;
@property( nonatomic,retain)NSMutableDictionary *recorddict;
@property (retain, nonatomic) IBOutlet UITextField *charges;
@property (retain, nonatomic) IBOutlet UITextField *less;

@property( nonatomic,retain)NSMutableDictionary *resultset;
@property (retain, nonatomic) IBOutlet UITextField *balance;
@property (retain, nonatomic) IBOutlet UITextField *amt;

@property (retain, nonatomic) IBOutlet UITextField *date;
@property (retain, nonatomic) IBOutlet UITextField *patientsign;

@property (retain, nonatomic) IBOutlet UITextField *drsign;
@property (retain, nonatomic) IBOutlet UITextField *reshedule;
@property (retain, nonatomic) IBOutlet UITextField *months;

@property (retain, nonatomic) IBOutlet UILabel *chargeslabel;
@property (retain, nonatomic) IBOutlet UILabel *balancelabel;

@end
