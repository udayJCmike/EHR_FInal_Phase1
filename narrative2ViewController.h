//
//  narrative2ViewController.h
//  narrative
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface narrative2ViewController : UIViewController<UIPrintInteractionControllerDelegate>

{
    int a;
    NSMutableDictionary *reccordict;
    NSMutableDictionary *mutearray;
    IBOutlet UITextField *text1;
    IBOutlet UITextField *text2;
    
    IBOutlet UITextField *text3;
    
    IBOutlet UITextField *o1;
    
    IBOutlet UITextField *o6;
    IBOutlet UITextField *o5;
    IBOutlet UITextField *o4;
    IBOutlet UITextField *o3;
    IBOutlet UITextField *o2;
    IBOutlet UITextField *text4;
    
    IBOutlet UISegmentedControl *s1;
    
    IBOutlet UISegmentedControl *s2;
    
    IBOutlet UISegmentedControl *s3;
    IBOutlet UISegmentedControl *s4;
    
    IBOutlet UISegmentedControl *rs1;
    
    IBOutlet UISegmentedControl *rs2;
    IBOutlet UISegmentedControl *rs3;
    
    IBOutlet UISegmentedControl *rs4;
    
    IBOutlet UISegmentedControl *rs5;
    
    IBOutlet UISegmentedControl *rs6;
    
    IBOutlet UISegmentedControl *ls1;
    IBOutlet UISegmentedControl *ls2;
    
    IBOutlet UISegmentedControl *ls3;
    
    IBOutlet UISegmentedControl *ls4;
    IBOutlet UISegmentedControl *ls5;
    IBOutlet UISegmentedControl *ls6;
    
    IBOutlet UISegmentedControl *s5;
    
    IBOutlet UISegmentedControl *s6;
    IBOutlet UISegmentedControl *s7;
    IBOutlet UISegmentedControl *s8;
    
    IBOutlet UISegmentedControl *s9;
    
    IBOutlet UISegmentedControl *s10;
    
    IBOutlet UISegmentedControl *s11;
    
    IBOutlet UISegmentedControl *s12;
    
    IBOutlet UISegmentedControl *s13;
    
    IBOutlet UISegmentedControl *s14;
    IBOutlet UISegmentedControl *s15;
    
    IBOutlet UISegmentedControl *s16;
    
    IBOutlet UISegmentedControl *s17;
    
    IBOutlet UISegmentedControl *s18another;
    IBOutlet UISegmentedControl *s18;
    NSString *rs1l;
    NSString *rs2l;
    NSString *rs3l;
    NSString *rs4l;
    NSString *rs5l;
    NSString *rs6l;
    NSString *ls1l;
    NSString *ls2l;
    NSString *ls3l;
    NSString *ls4l;
    NSString *ls5l;
    NSString *ls6l;
    NSString *s1l;
    NSString *s2l;
    NSString *s3l;
    NSString *s4l;
    NSString *s5l;
    NSString *s6l;
    NSString *s7l;
    NSString *s8l;
    NSString *s9l;
    NSString *s10l;
    NSString *s11l;
    NSString *s12l;
    NSString *s13l;
    NSString *s14l;
    NSString *s15l;
    NSString *s16l;
    NSString *s17l;
    NSString *s18l;
    NSString* s18ll;
    NSString *s19l; NSString *s20l; NSString *s21l; NSString *s22l; NSString *s23l; NSString *s24l; NSString *s25l; NSString *s26l; NSString *s27l; NSString *s28l; NSString *s29l; NSString *s30l;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10;
    
    NSMutableDictionary *resultset;
}
@property(retain, nonatomic)NSMutableDictionary *resultset;
@property(retain, nonatomic)NSMutableDictionary *mutearray;
@property (retain, nonatomic) IBOutlet UITextField *text1;
@property (retain, nonatomic) IBOutlet UITextField *text2;
@property (retain, nonatomic) IBOutlet UITextField *text3;
@property (retain, nonatomic) IBOutlet UITextField *text4;
@property (retain, nonatomic) IBOutlet UITextField *o1;
@property (retain, nonatomic) IBOutlet UITextField *o2;
@property (retain, nonatomic) IBOutlet UITextField *o3;
@property (retain, nonatomic) IBOutlet UITextField *o4;
@property (retain, nonatomic) IBOutlet UITextField *o5;
@property (retain, nonatomic) IBOutlet UITextField *o6;
@property (retain, nonatomic) IBOutlet UISegmentedControl *rs1;
@property (retain, nonatomic) IBOutlet UISegmentedControl *rs2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *rs3;
@property (retain, nonatomic) IBOutlet UISegmentedControl *rs4;
@property (retain, nonatomic) IBOutlet UISegmentedControl *rs5;
@property (retain, nonatomic) IBOutlet UISegmentedControl *rs6;
@property (retain, nonatomic) IBOutlet UISegmentedControl *ls1;
@property (retain, nonatomic) IBOutlet UISegmentedControl *ls2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *ls3;
@property (retain, nonatomic) IBOutlet UISegmentedControl *ls4;
@property (retain, nonatomic) IBOutlet UISegmentedControl *ls5;
@property (retain, nonatomic) IBOutlet UISegmentedControl *ls6;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s1;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s2;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s3;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s4;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s5;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s6;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s7;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s8;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s9;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s10;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s11;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s12;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s13;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s14;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s15;

@property (retain, nonatomic) IBOutlet UISegmentedControl *s16;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s17;

@property (retain, nonatomic) IBOutlet UISegmentedControl *s18;
@property (retain, nonatomic) IBOutlet UISegmentedControl *s18another;

@property (retain, nonatomic)NSMutableDictionary *recorddict;


@property (nonatomic, assign, getter = isPicVisible) BOOL picVisible;

















































@end
