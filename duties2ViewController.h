//
//  duties2ViewController.h
//  duties2
//
//  Created by Admin on 04/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
#import "MBProgressHUD.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface duties2ViewController : UIViewController<UIPickerViewDelegate,TextFieldDatePickerDelegate,MBProgressHUDDelegate>
{
    
    
    IBOutlet UITextField *patientname;
    IBOutlet UITextField *date;
    IBOutlet UITextField *jobdescription;
    IBOutlet UITextField *other;
    IBOutlet UITextField *other1;
    IBOutlet UITextField *other2;
    IBOutlet UITextField *other3;
    IBOutlet UITextField *other4;
    IBOutlet UITextField *other5;
    IBOutlet UITextField *other6;
    IBOutlet UITextField *other7;
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button3;
    IBOutlet UIButton *button4;
    IBOutlet UIButton *button5;
    IBOutlet UIButton *button6;
    IBOutlet UIButton *button7;
    IBOutlet UIButton *button8;
    IBOutlet UIButton *button9;
    IBOutlet UIButton *button10;
    IBOutlet UIButton *button11;
    IBOutlet UIButton *button12;
    IBOutlet UIButton *button13;
    IBOutlet UIButton *button14;
    IBOutlet UIButton *button15;
    IBOutlet UIButton *button16;
    IBOutlet UIButton *button17;
    IBOutlet UIButton *button18;
    IBOutlet UIButton *button19;
    IBOutlet UIButton *button20;
    IBOutlet UIButton *button21;
    IBOutlet UIButton *button22;
    IBOutlet UIButton *button23;
    IBOutlet UIButton *button24;
    IBOutlet UIButton *button25;
    IBOutlet UIButton *button26;
    IBOutlet UIButton *button27;
    IBOutlet UIButton *button28;
    IBOutlet UIButton *button29;
    IBOutlet UIButton *button30;
    IBOutlet UIButton *button31;
    IBOutlet UIButton *button32;
    IBOutlet UIButton *button33;
    IBOutlet UIButton *button34;
    IBOutlet UIButton *button35;
    IBOutlet UIButton *button36;
    IBOutlet UIButton *button37;
    IBOutlet UIButton *button38;
    IBOutlet UIButton *button39;
    IBOutlet UIButton *button40;
    IBOutlet UIButton *button41;
    IBOutlet UIButton *button42;
    IBOutlet UIButton *button43;
    IBOutlet UIButton *button44;
    IBOutlet UIButton *button45;
    IBOutlet UIButton *button46;
    IBOutlet UIButton *button47;
    IBOutlet UIButton *button48;
    IBOutlet UIButton *button49;
    IBOutlet UIButton *button50;
    IBOutlet UIButton *button51;
    IBOutlet UIButton *button52;
    IBOutlet UIButton *button53;
    IBOutlet UIButton *button54;
    IBOutlet UIButton *button55;
    IBOutlet UIButton *button56;
    IBOutlet UIButton *button57;
    IBOutlet UIButton *button58;
    IBOutlet UIButton *button59;
    IBOutlet UIButton *button60;
    IBOutlet UIButton *button61;
    IBOutlet UIButton *button62;
    IBOutlet UIButton *button63;
    IBOutlet UIButton *button64;
    IBOutlet UIButton *button65;
    IBOutlet UIButton *button66;
    IBOutlet UIButton *button67;
    IBOutlet UIButton *button68;
    IBOutlet UIButton *button69;
    IBOutlet UIButton *button70;
    IBOutlet UIButton *button71;
    IBOutlet UIButton *button72;
    IBOutlet UIButton *button73;
    IBOutlet UIButton *button74;
    IBOutlet UIButton *button75;
    IBOutlet UIButton *button76;
    IBOutlet UIButton *button77;
    IBOutlet UIButton *button78;
    IBOutlet UIButton *button79;
    IBOutlet UIButton *button80;
    IBOutlet UIButton *button81;
    IBOutlet UIButton *button82;
    IBOutlet UIButton *button83;
    IBOutlet UIButton *button84;
    IBOutlet UIButton *button85;
    IBOutlet UIButton *button86;
    IBOutlet UIButton *button87;
    IBOutlet UIButton *button88;
    IBOutlet UIButton *button89;
    IBOutlet UIButton *button90;
    IBOutlet UIButton *button91;
    IBOutlet UIButton *button92;
    IBOutlet UIButton *button93;
    IBOutlet UIButton *button94;
    IBOutlet UIButton *button95;
    IBOutlet UIButton *button96;
    IBOutlet UIButton *button97;
    IBOutlet UIButton *button98;
    IBOutlet UIButton *button99;
    IBOutlet UIButton *button100;
    IBOutlet UIButton *button101;
    IBOutlet UIButton *button102;
    IBOutlet UIButton *button103;
    IBOutlet UIButton *button104;
    IBOutlet UIButton *button105;
    IBOutlet UIButton *button106;
    IBOutlet UIButton *button107;
    IBOutlet UIButton *button108;
    IBOutlet UIButton *button109;
    IBOutlet UIButton *button110;
    IBOutlet UIButton *button111;
    IBOutlet UIButton *button112;
    IBOutlet UIButton *button113;
    IBOutlet UIButton *button114;
    IBOutlet UIButton *button115;
    IBOutlet UIButton *button116;
    IBOutlet UIButton *button117;
    IBOutlet UIButton *button118;
    IBOutlet UIButton *button119;
    IBOutlet UIButton *button120;
    IBOutlet UIButton *button121;
    IBOutlet UIButton *button122;
    IBOutlet UIButton *button123;
    IBOutlet UIButton *button124;
    IBOutlet UIButton *button125;
    IBOutlet UIButton *button126;
    IBOutlet UIButton *button127;
    IBOutlet UIButton *button128;
    IBOutlet UIButton *button129;
    IBOutlet UIButton *button130;
    IBOutlet UIButton *button131;
    IBOutlet UIButton *button132;
    IBOutlet UIButton *button133;
    IBOutlet UIButton *button134;
    IBOutlet UIButton *button135;
    IBOutlet UIButton *button136;
    IBOutlet UIButton *button137;
    IBOutlet UIButton *button138;
    IBOutlet UIButton *button139;
    IBOutlet UIButton *button140;
    IBOutlet UIButton *button141;
    IBOutlet UIButton *button142;
    IBOutlet UIButton *button143;
    IBOutlet UIButton *button144;
    IBOutlet UIButton *button145;
    IBOutlet UIButton *button146;
    IBOutlet UIButton *button147;
    IBOutlet UIButton *button148;
    IBOutlet UIButton *button149;
    IBOutlet UIButton *button150;
    IBOutlet UIButton *button151;
    IBOutlet UIButton *button152;
    IBOutlet UIButton *button153;
    IBOutlet UIButton *button154;
    IBOutlet UIButton *button155;
    IBOutlet UIButton *button156;
    IBOutlet UIButton *button157;
    IBOutlet UIButton *button158;
    IBOutlet UIButton *button159;
    IBOutlet UIButton *button160;
    IBOutlet UILabel *lab1;
    IBOutlet UILabel *lab2;
    IBOutlet UILabel *lab3;
    IBOutlet UILabel *lab4;
    IBOutlet UILabel *lab5;
    IBOutlet UILabel *lab6;
    IBOutlet UILabel *lab7;
    IBOutlet UILabel *lab8;
    IBOutlet UILabel *lab9;
    IBOutlet UILabel *lab10;
    IBOutlet UILabel *lab11;
    IBOutlet UILabel *lab12;
    IBOutlet UILabel *lab13;
    IBOutlet UILabel *lab14;
    IBOutlet UILabel *lab15;
    IBOutlet UILabel *lab16;
    IBOutlet UILabel *lab17;
    IBOutlet UILabel *lab18;
    IBOutlet UILabel *lab19;
    IBOutlet UILabel *lab20;
    IBOutlet UILabel *lab21;
    IBOutlet UILabel *lab22;
    IBOutlet UILabel *lab23;
    IBOutlet UILabel *lab24;
    IBOutlet UILabel *lab25;
    IBOutlet UILabel *lab26;
    IBOutlet UILabel *lab27;
    IBOutlet UILabel *lab28;
    IBOutlet UILabel *lab29;
    IBOutlet UILabel *lab30;
    IBOutlet UILabel *lab31;
    IBOutlet UILabel *lab32;
    IBOutlet UILabel *lab33;
    IBOutlet UILabel *lab34;
    IBOutlet UILabel *lab35;
    IBOutlet UILabel *lab36;
    IBOutlet UILabel *lab37;
    IBOutlet UILabel *lab38;
    IBOutlet UILabel *lab39;
    IBOutlet UILabel *lab40;
    IBOutlet UILabel *lab41;
    IBOutlet UILabel *lab42;
    IBOutlet UILabel *lab43;
    IBOutlet UILabel *lab44;
    IBOutlet UILabel *lab45;
    IBOutlet UILabel *lab46;
    IBOutlet UILabel *lab47;
    IBOutlet UILabel *lab48;
    IBOutlet UILabel *lab49;
    IBOutlet UILabel *lab50;
    IBOutlet UILabel *lab51;
    IBOutlet UILabel *lab52;
    IBOutlet UILabel *lab53;
    IBOutlet UILabel *lab54;
    IBOutlet UILabel *lab55;
    IBOutlet UILabel *lab56;
    IBOutlet UILabel *lab57;
    IBOutlet UILabel *lab58;
    IBOutlet UILabel *lab59;
    IBOutlet UILabel *lab60;
    IBOutlet UILabel *lab61;
    IBOutlet UILabel *lab62;
    IBOutlet UILabel *lab63;
    IBOutlet UILabel *lab64;
    IBOutlet UILabel *lab65;
    IBOutlet UILabel *lab66;
    IBOutlet UILabel *lab67;
    IBOutlet UILabel *lab68;
    IBOutlet UILabel *lab69;
    IBOutlet UILabel *lab70;
    IBOutlet UILabel *lab71;
    IBOutlet UILabel *lab72;
    IBOutlet UILabel *lab73;
    IBOutlet UILabel *lab74;
    IBOutlet UILabel *lab75;
    IBOutlet UILabel *lab76;
    IBOutlet UILabel *lab77;
    IBOutlet UILabel *lab78;
    IBOutlet UILabel *lab79;
    IBOutlet UILabel *lab80;
    IBOutlet UILabel *lab81;
    IBOutlet UILabel *lab82;
    IBOutlet UILabel *lab83;
    IBOutlet UILabel *lab84;
    IBOutlet UILabel *lab85;
    IBOutlet UILabel *lab86;
    IBOutlet UILabel *lab87;
    IBOutlet UILabel *lab88;
    IBOutlet UILabel *lab89;
    IBOutlet UILabel *lab90;
    IBOutlet UILabel *lab91;
    IBOutlet UILabel *lab92;
    IBOutlet UILabel *lab93;
    IBOutlet UILabel *lab94;
    IBOutlet UILabel *lab95;
    IBOutlet UILabel *lab96;
    IBOutlet UILabel *lab97;
    IBOutlet UILabel *lab98;
    IBOutlet UILabel *lab99;
    IBOutlet UILabel *lab100;
    IBOutlet UILabel *lab101;
    IBOutlet UILabel *lab102;
    IBOutlet UILabel *lab103;
    IBOutlet UILabel *lab104;
    IBOutlet UILabel *lab105;
    IBOutlet UILabel *lab106;
    IBOutlet UILabel *lab107;
    IBOutlet UILabel *lab108;
    IBOutlet UILabel *lab109;
    IBOutlet UILabel *lab110;
    IBOutlet UILabel *lab111;
    IBOutlet UILabel *lab112;
    IBOutlet UILabel *lab113;
    IBOutlet UILabel *lab114;
    IBOutlet UILabel *lab115;
    IBOutlet UILabel *lab116;
    IBOutlet UILabel *lab117;
    IBOutlet UILabel *lab118;
    IBOutlet UILabel *lab119;
    IBOutlet UILabel *lab120;
    IBOutlet UILabel *lab121;
    IBOutlet UILabel *lab122;
    IBOutlet UILabel *lab123;
    IBOutlet UILabel *lab124;
    IBOutlet UILabel *lab125;
    IBOutlet UILabel *lab126;
    IBOutlet UILabel *lab127;
    IBOutlet UILabel *lab128;
    IBOutlet UILabel *lab129;
    IBOutlet UILabel *lab130;
    IBOutlet UILabel *lab131;
    IBOutlet UILabel *lab132;
    IBOutlet UILabel *lab133;
    IBOutlet UILabel *lab134;
    IBOutlet UILabel *lab135;
    IBOutlet UILabel *lab136;
    IBOutlet UILabel *lab137;
    IBOutlet UILabel *lab138;
    IBOutlet UILabel *lab139;
    IBOutlet UILabel *lab140;
    IBOutlet UILabel *lab141;
    IBOutlet UILabel *lab142;
    IBOutlet UILabel *lab143;
    IBOutlet UILabel *lab144;
    IBOutlet UILabel *lab145;
    IBOutlet UILabel *lab146;
    IBOutlet UILabel *lab147;
    IBOutlet UILabel *lab148;
    IBOutlet UILabel *lab149;
    IBOutlet UILabel *lab150;
    IBOutlet UILabel *lab151;
    IBOutlet UILabel *lab152;
    IBOutlet UILabel *lab153;
    IBOutlet UILabel *lab154;
    IBOutlet UILabel *lab155;
    IBOutlet UILabel *lab156;
    IBOutlet UILabel *lab157;
    IBOutlet UILabel *lab158;
    IBOutlet UILabel *lab159;
    IBOutlet UILabel *lab160;
    
    
    
    
    
    
    
    
//    IBOutlet UITextField *work_lifting;
//    IBOutlet UILabel *wo_li_inc;
//    IBOutlet UILabel *wo_li_res;
//    IBOutlet UILabel *wo_li_weak;
//    IBOutlet UILabel *wo_li_since;
//    IBOutlet UILabel *wo_li_on;
//    IBOutlet UILabel *wo_bending;
//    IBOutlet UILabel *wo_be_inc;
//    IBOutlet UILabel *wo_be_res;
//    IBOutlet UILabel *wo_be_weak;
//    IBOutlet UILabel *wo_be_since;
//    IBOutlet UILabel *wo_be_on;
//    IBOutlet UILabel *wo_sitting;
//    IBOutlet UILabel *wo_si_inc;
//    IBOutlet UILabel *wo_si_res;
//    IBOutlet UILabel *wo_si_weak;
//    IBOutlet UILabel *wo_si_since;
//    IBOutlet UILabel *wo_si_on;
//    IBOutlet UILabel *wo_walking;
//    IBOutlet UILabel *wo_wa_inc;
//    IBOutlet UILabel *wo_wa_res;
//    IBOutlet UILabel *wo_wa_weak;
//    IBOutlet UILabel *wo_wa_since;
//    IBOutlet UILabel *wo_wa_on;
//    IBOutlet UILabel *wo_computerduties;
//    IBOutlet UILabel *wo_co_inc;
//    IBOutlet UILabel *wo_co_res;
//    IBOutlet UILabel *wo_co_fat;
//    IBOutlet UILabel *wo_co_since;
//    IBOutlet UILabel *wo_co_on;
//    IBOutlet UILabel *wo_other;
//    IBOutlet UILabel *wo_oth_inc;
//    IBOutlet UILabel *wo_oth_res;
//    IBOutlet UILabel *wo_oth_weak;
//    IBOutlet UILabel *wo_oth_since;
//    IBOutlet UILabel *wo_oth_on;
//    IBOutlet UILabel *wo_other1;
//    IBOutlet UILabel *wo_oth1_inc;
//    IBOutlet UILabel *wo_oth1_res;
//    IBOutlet UILabel *wo_oth1_weak;
//    IBOutlet UILabel *wo_oth1_since;
//    IBOutlet UILabel *wo_oth1_on;
//    IBOutlet UILabel *stud_lifting;
//    IBOutlet UILabel *stud_li_inc;
//    IBOutlet UILabel *stud_li_res;
//    IBOutlet UILabel *stud_li_weak;
//    IBOutlet UILabel *stud_li_since;
//    IBOutlet UILabel *stud_li_on;
//    IBOutlet UILabel *stud_bending;
//    IBOutlet UILabel *stud_be_inc;
//    IBOutlet UILabel *stud_be_res;
//    IBOutlet UILabel *stud_be_weak;
//    IBOutlet UILabel *stud_be_since;
//    IBOutlet UILabel *stud_be_on;
//    IBOutlet UILabel *stud_sitting;
//    IBOutlet UILabel *stud_si_inc;
//    IBOutlet UILabel *stud_si_res;
//    IBOutlet UILabel *stud_si_weak;
//    IBOutlet UILabel *stud_si_since;
//    IBOutlet UILabel *stud_si_on;
//    IBOutlet UILabel *stud_walking;
//    IBOutlet UILabel *stud_wa_inc;
//    IBOutlet UILabel *stud_wa_res;
//    IBOutlet UILabel *stud_wa_weak;
//    IBOutlet UILabel *stud_wa_since;
//    IBOutlet UILabel *stud_wa_on;
//    IBOutlet UILabel *stud_computer;
//    IBOutlet UILabel *stud_co_inc;
//    IBOutlet UILabel *stud_co_res;
//    IBOutlet UILabel *stud_co_fat;
//    IBOutlet UILabel *stud_co_since;
//    IBOutlet UILabel *stud_co_on;
//    IBOutlet UILabel *stud_studying;
//    IBOutlet UILabel *stud_st_inc;
//    IBOutlet UILabel *stud_st_res;
//    IBOutlet UILabel *stud_st_fat;
//    IBOutlet UILabel *stud_st_since;
//    IBOutlet UILabel *stud_st_on;
//    IBOutlet UILabel *stud_concen;
//    IBOutlet UILabel *stud_con_inc;
//    IBOutlet UILabel *stud_con_res;
//    IBOutlet UILabel *stud_con_fat;
//    IBOutlet UILabel *stud_con_since;
//    IBOutlet UILabel *stud_con_on;
//    IBOutlet UILabel *stud_other;
//    IBOutlet UILabel *stud_oth_inc;
//    IBOutlet UILabel *stud_oth_res;
//    IBOutlet UILabel *stud_oth_weak;
//    IBOutlet UILabel *stud_oth_since;
//    IBOutlet UILabel *stud_oth_on;
//    IBOutlet UILabel *stud_other1;
//    IBOutlet UILabel *stud_oth1_inc;
//    IBOutlet UILabel *stud_oth1_res;
//    IBOutlet UILabel *stud_oth1_weak;
//    IBOutlet UILabel *stud_oth1_since;
//    IBOutlet UILabel *stud_oth1_on;
//    IBOutlet UILabel *dom_vaccuming;
//    IBOutlet UILabel *dom_va_inc;
//    IBOutlet UILabel *dom_va_res;
//    IBOutlet UILabel *dom_va_fat;
//    IBOutlet UILabel *dom_va_since;
//    IBOutlet UILabel *dom_va_on;
//    IBOutlet UILabel *dom_taking;
//    IBOutlet UILabel *dom_ta_inc;
//    IBOutlet UILabel *dom_ta_res;
//    IBOutlet UILabel *dom_ta_fat;
//    IBOutlet UILabel *dom_ta_since;
//    IBOutlet UILabel *dom_ta_on;
//    IBOutlet UILabel *dom_cleaning;
//    IBOutlet UILabel *dom_cl_inc;
//    IBOutlet UILabel *dom_cl_res;
//    IBOutlet UILabel *dom_cl_fat;
//    IBOutlet UILabel *dom_cl_since;
//    IBOutlet UILabel *dom_cl_on;
//    IBOutlet UILabel *dom_preparing;
//    IBOutlet UILabel *dom_pr_ins;
//    IBOutlet UILabel *dom_pr_res;
//    IBOutlet UILabel *dom_pr_fat;
//    IBOutlet UILabel *dom_pr_since;
//    IBOutlet UILabel *dom_pr_on;
//    IBOutlet UILabel *dom_oth_inc;
//    IBOutlet UILabel *dom_oth_res;
//    IBOutlet UILabel *dom_oth_fat;
//    IBOutlet UILabel *dom_oth_since;
//    IBOutlet UILabel *dom_oth_on;
//    IBOutlet UILabel *dom_oth1_inc;
//    IBOutlet UILabel *dom_oth1_res;
//    IBOutlet UILabel *dom_oth1_fat;
//    IBOutlet UILabel *dom_oth1_since;
//    IBOutlet UILabel *dom_oth1_on;
//    IBOutlet UILabel *household_yard;
//    IBOutlet UILabel *ho_ya_inc;
//    IBOutlet UILabel *ho_ya_res;
//    IBOutlet UILabel *ho_ya_fat;
//    IBOutlet UILabel *ho_ya_since;
//    IBOutlet UILabel *ho_ya_on;
//    IBOutlet UILabel *ho_transport;
//    IBOutlet UILabel *ho_tr_inc;
//    IBOutlet UILabel *ho_tr_res;
//    IBOutlet UILabel *ho_tr_fat;
//    IBOutlet UILabel *ho_tr_since;
//    IBOutlet UILabel *ho_tr_on;
//    IBOutlet UILabel *ho_shopping;
//    IBOutlet UILabel *ho_sh_inc;
//    IBOutlet UILabel *ho_sh_res;
//    IBOutlet UILabel *ho_sh_fat;
//    IBOutlet UILabel *ho_sh_since;
//    IBOutlet UILabel *ho_sh_on;
//    IBOutlet UILabel *ho_taking;
//    IBOutlet UILabel *ho_ta_inc;
//    IBOutlet UILabel *ho_ta_res;
//    IBOutlet UILabel *ho_ta_weak;
//    IBOutlet UILabel *ho_ta_since;
//    IBOutlet UILabel *ho_ta_on;
//    IBOutlet UILabel *ho_oth_inc;
//    IBOutlet UILabel *ho_oth_res;
//    IBOutlet UILabel *ho_oth_fat;
//    IBOutlet UILabel *ho_oth_since;
//    IBOutlet UILabel *ho_oth_on;
//    IBOutlet UILabel *ho_oth1_inc;
//    IBOutlet UILabel *ho_oth1_res;
//    IBOutlet UILabel *ho_oth1_fat;
//    IBOutlet UILabel *ho_oth1_since;
//    IBOutlet UILabel *ho_oth1_on;
    IBOutlet UIButton *cancel1;
    
    NSString *_1,*_2,*_3,*_4,*_5,*_6,*_7,*_8,*_9,*_10,*_11,*_12,*_13,*_14,*_15,*_16,*_17,*_18,*_19,*_20,*_21,*_22,*_23,*_24,*_25,*_26,*_27,*_28,*_29,*_30,*_31,*_32,*_33,*_34,*_35,*_36,*_37,*_38,*_39,*_40,*_41,*_42,*_43,*_44,*_45,*_46,*_47,*_48,*_49,*_50,*_51,*_52,*_53,*_54,*_55,*_56,*_57,*_58,*_59,*_60,*_61,*_62,*_63,*_64,*_65,*_66,*_67,*_68,*_69,*_70,*_71,*_72,*_73,*_74,*_75,*_76,*_77,*_78,*_79,*_80,*_81,*_82,*_83,*_84,*_85,*_86,*_87,*_88,*_89,*_90,*_91,*_92,*_93,*_94,*_95,*_96,*_97,*_98,*_99,*_100,*_101,*_102,*_103,*_104,*_105,*_106,*_107,*_108,*_109,*_110,*_111,*_112,*_113,*_114,*_115,*_116,*_117,*_118,*_119,*_120,*_121,*_122,*_123,*_124,*_125,*_126,*_127,*_128,*_129,*_130,*_131,*_132,*_133,*_134,*_135,*_136,*_137,*_138,*_139,*_140,*_141,*_142,*_143,*_144,*_145,*_146,*_147,*_148,*_149,*_150,*_151,*_152,*_153,*_154,*_155,*_156,*_157,*_158,*_159,*_160;
    NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30,*temp31,*temp32,*temp33,*temp34,*temp35,*temp36,*temp37,*temp38,*temp39,*temp40,*temp41,*temp42,*temp43,*temp44,*temp45,*temp46,*temp47,*temp48,*temp49,*temp50,*temp51,*temp52,*temp53,*temp54,*temp55,*temp56,*temp57,*temp58,*temp59,*temp60,*temp61,*temp62,*temp63,*temp64,*temp65,*temp66,*temp67,*temp68,*temp69,*temp70,*temp71,*temp72,*temp73,*temp74,*temp75,*temp76,*temp77,*temp78,*temp79,*temp80,*temp81,*temp82,*temp83,*temp84,*temp85,*temp86,*temp87,*temp88,*temp89,*temp90,*temp91,*temp92,*temp93,*temp94,*temp95,*temp96,*temp97,*temp98,*temp99,*temp100,*temp101,*temp102,*temp103,*temp104,*temp105,*temp106,*temp107,*temp108,*temp109,*temp110,*temp111,*temp112,*temp113,*temp114,*temp115,*temp116,*temp117,*temp118,*temp119,*temp120,*temp121,*temp122,*temp123,*temp124,*temp125,*temp126,*temp127,*temp128,*temp129,*temp130,*temp131,*temp132,*temp133,*temp134,*temp135,*temp136,*temp137,*temp138,*temp139,*temp140,*temp141,*temp142,*temp143,*temp144,*temp145,*temp146,*temp147,*temp148,*temp149,*temp150,*temp151,*temp152,*temp153,*temp154,*temp155,*temp156,*temp157,*temp158,*temp159,*temp160,*temp161,*temp162,*temp163,*temp164,*temp165,*temp166,*temp167,*temp168,*temp169,*temp170,*temp171,*temp172,*temp173,*temp174,*temp175,*temp176,*temp177,*temp178,*temp179,*temp180;
    
    // IBOutlet UILabel *checked;
    //IBOutlet UILabel *checkbox;
    NSMutableDictionary * recorddict;
    NSString * databasePath;
    
    IBOutlet UIButton *reset1;
    MBProgressHUD *HUD;
    BOOL isConnect;
    
    
    
    IBOutlet UIButton *cancel2;
    NSMutableArray*selectedcheckbox;
    int c;
    // NSMutableDictionary *recorddict;
}

@property (strong, nonatomic) IBOutlet UITextField *patientname;
@property (strong, nonatomic) IBOutlet UITextField *date;
@property (strong, nonatomic) IBOutlet UITextField *jobdescription;
@property (strong, nonatomic) IBOutlet UITextField *other;
@property (strong, nonatomic) IBOutlet UITextField *other1;
@property (strong, nonatomic) IBOutlet UITextField *other2;
@property (strong, nonatomic) IBOutlet UITextField *other3;
@property (strong, nonatomic) IBOutlet UITextField *other4;
@property (strong, nonatomic) IBOutlet UITextField *other5;
@property (strong, nonatomic) IBOutlet UITextField *other6;
@property (strong, nonatomic) IBOutlet UITextField *other7;
@property (strong, nonatomic) NSMutableDictionary * recorddict;
@property (retain, nonatomic) IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *update;
@property (retain, nonatomic) IBOutlet UIButton *delete;

@property (retain, nonatomic) IBOutlet UIButton *reset1;
@property (retain, nonatomic) IBOutlet UIButton *reset2;
@property (retain, nonatomic) IBOutlet UIButton *submit;
@property (retain, nonatomic) IBOutlet UIButton *cancel1;
@property (retain, nonatomic) IBOutlet UIButton *cancel2;

- (IBAction)delete:(id)sender;

- (IBAction)save:(id)sender;
- (IBAction)reset:(id)sender;

@end