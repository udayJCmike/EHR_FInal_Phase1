//
//  narrativeViewController.h
//  narrative
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
@interface narrativeViewController : UIViewController<UITextFieldDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate,UIPrintInteractionControllerDelegate>
{
    int a;
    NSMutableDictionary *recorddict;
    NSMutableDictionary *resultset;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50;
    
    NSString *temp51,*temp52,*temp53,*temp54,*temp55,*temp56,*temp57,*temp58,*temp59,*temp60,*temp61,*temp62,*temp63,*temp64,*temp65,*temp66,*temp67,*temp68,*temp69,*temp70,*temp71,*temp72,*temp73,*temp74,*temp75,*temp76,*temp77,*temp78,*temp79,*temp80,*temp81,*temp82,*temp83,*temp84,*temp85,*temp86,*temp87,*temp88,*temp89,*temp90,*temp91,*temp92,*temp93,*temp94,*temp95,*temp96,*temp97,*temp98,*temp99,*temp100;
    NSString *temp101,*temp102,*temp103,*temp104,*temp105,*temp106,*temp107,*temp108,*temp109,*temp110;
    NSString *tempp,*tempp1,*tempp2,*tempp3,*tempp4,*tempp5,*tempp6,*tempp7,*tempp8,*tempp9,*tempp10,*tempp11,*tempp12,*tempp13,*tempp14,*tempp15,*tempp16,*tempp17,*tempp18,*tempp19,*tempp20,*tempp21,*tempp22,*tempp23,*tempp24,*tempp25,*tempp26,*tempp27,*tempp28,*tempp29,*tempp30,*tempp31,*tempp32,*tempp33,*tempp34,*tempp35,*tempp36,*tempp37,*tempp38,*tempp39,*tempp40,*tempp41,*tempp42,*tempp43,*tempp44,*tempp45,*tempp46,*tempp47,*tempp48,*tempp49,*tempp50;
    IBOutlet UILabel *patname;
    IBOutlet UILabel*patname2;
    NSString *tempp57,*tempp60;
    
    NSString *physictemp,*physictemp1,*physictemp2,*physictemp3,*physictemp4,*physictemp5,*physictemp6,*physictemp7,*physictemp8,*physictemp9,*physictemp10,*physictemp11,*physictemp12,*physictemp13,*physictemp14,*physictemp15,*physictemp16,*physictemp17,*physictemp18,*physictemp19,*physictemp20,*physictemp21,*physictemp22,*physictemp23,*physictemp24,*physictemp25,*physictemp26,*physictemp27,*physictemp28,*physictemp29,*physictemp30,*physictemp31,*physictemp32,*physictemp33,*physictemp34,*physictemp35,*physictemp36,*physictemp37,*physictemp38,*physictemp39,*physictemp40,*physictemp41,*physictemp42,*physictemp43,*physictemp44,*physictemp45,*physictemp46,*physictemp47,*physictemp48,*physictemp49,*physictemp50;
    
    
    
    
    IBOutlet UITextField *reportdate;
    IBOutlet UITextField *dateofvisit;
    IBOutlet UITextField *dateofinjury;
    IBOutlet UITextField *patientname;
    
    IBOutlet UITextField *text2;
    IBOutlet UITextField *text6;
    IBOutlet UITextField *to;
    
    IBOutlet UITextField *accon1;
    
    IBOutlet UITextField *examon;
    IBOutlet UITextField *accon;
    IBOutlet UITextField *text3;
    
    IBOutlet UITextField *text4;
    
    IBOutlet UITextField *text5;
    NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6;
    //,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20;
    MBProgressHUD *HUD;
    BOOL isConnect;
    NSString *s1l;
    NSString *s2l;
    NSString *indexresult;
    NSString *gender;
    NSString *wasnotlabel;
}


@property (retain, nonatomic) IBOutlet UILabel *gen1;
@property (retain, nonatomic) IBOutlet UILabel *gen2;
@property (retain, nonatomic) IBOutlet UILabel *gen3;
@property (retain, nonatomic) IBOutlet UILabel *gen4;
@property (retain, nonatomic) IBOutlet UILabel *gen5;

@property (retain, nonatomic) IBOutlet UILabel *gen8;

@property (retain, nonatomic) IBOutlet UILabel *index1;

@property (retain, nonatomic) IBOutlet UILabel *index3;
@property (retain, nonatomic) IBOutlet UILabel *index4;





@property (retain, nonatomic) IBOutlet UILabel *his;
@property (retain, nonatomic) IBOutlet UILabel *his1;
@property (retain, nonatomic) IBOutlet UILabel *his2;
@property (retain, nonatomic) IBOutlet UILabel *his3;
@property (retain, nonatomic) IBOutlet UILabel *his4;



@property (retain, nonatomic) IBOutlet UISegmentedControl *gend;
@property (retain, nonatomic) IBOutlet UILabel *patname3;
@property(retain, nonatomic)NSMutableDictionary *mutearray;


@property (retain, nonatomic) IBOutlet UILabel *patname;
@property (retain, nonatomic) IBOutlet UILabel *history;
@property (retain, nonatomic) IBOutlet UILabel *patname2;
@property(retain, nonatomic)NSMutableDictionary *resultset;
@property(retain, nonatomic)NSMutableDictionary *recorddict;
@property (strong, nonatomic) IBOutlet UITextField *text5;
@property (retain, nonatomic) IBOutlet UITextField *dateofvisit;
@property (retain, nonatomic) IBOutlet UITextField *to;

@property (retain, nonatomic) IBOutlet UITextField *text3;

@property (retain, nonatomic) IBOutlet UITextField *accon;

@property (strong, nonatomic) IBOutlet UITextField *text4;
@property (retain, nonatomic) IBOutlet UISegmentedControl *index;

@property (strong, nonatomic) IBOutlet UITextField *text6;

@property (strong, nonatomic) IBOutlet UITextField *text2;


@property (retain, nonatomic) IBOutlet UITextField *accon1;

@property (retain, nonatomic) IBOutlet UITextField *examon;

@property (retain, nonatomic) IBOutlet UITextField *dateofinjury;

@property (retain, nonatomic) IBOutlet UITextField *patientname;
@property (retain, nonatomic) IBOutlet UITextField *reportdate;
@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;
@end
