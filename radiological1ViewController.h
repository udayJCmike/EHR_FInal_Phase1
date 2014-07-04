//
//  radiological1ViewController.h
//  radiological
//
//  Created by deemsys on 3/3/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
@interface radiological1ViewController : UIViewController<TextFieldDatePickerDelegate>
{
    int a;
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18;
    
    IBOutlet UISegmentedControl *views;
    
    IBOutlet UIButton *neg;
    IBOutlet UIButton *hyper;
    IBOutlet UIButton *nor;
    
    IBOutlet UIButton *hypo;
    IBOutlet UISegmentedControl *hyperseg;
    IBOutlet UISegmentedControl *negseg;
    IBOutlet UISegmentedControl *hyposeg;
    IBOutlet UIButton *deg;
    IBOutlet UITextField *degtext;
    IBOutlet UIButton *mild;
    IBOutlet UIButton *moderate;
    IBOutlet UIButton *severe;
    IBOutlet UIButton *narrow;
    IBOutlet UITextField *narrowtext;
    
    IBOutlet UIButton *sch;
    IBOutlet UITextField *schtext;
    IBOutlet UIButton *anterior;
    IBOutlet UITextField *anteriortext;
    
    IBOutlet UIButton *foraminal;
    
    IBOutlet UITextField *foraminaltext;
    IBOutlet UIButton *sub;
    IBOutlet UITextField *subtext;
    IBOutlet UIButton *oster;
    IBOutlet UISegmentedControl *osterseg;
    
    IBOutlet UISegmentedControl *dlt;
    IBOutlet UIButton *mi;
    IBOutlet UIButton *mo;
    IBOutlet UIButton *se;
    IBOutlet UIButton *apex;
    IBOutlet UITextField *apextext;
    IBOutlet UIButton *soft;
    IBOutlet UITextField *softtext;
    IBOutlet UIButton *other;
    IBOutlet UIButton *cancel;
    IBOutlet UITextField *othertext;
    
    NSString *viewl;
    NSString *hyposegl;
    NSString *norsegl;
    NSString *hypersegl;
    NSString *degsegl;
    NSString *foraminalsegl;
    NSString *ostersegl;
    NSString *dectext;
    NSString *decrlsegl;
    NSString *dltsegl;
    
    
}
- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *views;
@property (retain, nonatomic) IBOutlet UIButton *neg;

@property (retain, nonatomic) IBOutlet UIButton *hyper;
@property (retain, nonatomic) IBOutlet UISegmentedControl *hyperseg;

@property (retain, nonatomic) IBOutlet UIButton *nor;
@property (retain, nonatomic) IBOutlet UISegmentedControl *norseg;
@property (retain, nonatomic) IBOutlet UIButton *hypo;

@property (retain, nonatomic) IBOutlet UISegmentedControl *hyposeg;
@property (retain, nonatomic) IBOutlet UIButton *deg;

@property (retain, nonatomic) IBOutlet UITextField *degtext;

@property (retain, nonatomic) IBOutlet UIButton *mild;
@property (retain, nonatomic) IBOutlet UIButton *moderate;
@property (retain, nonatomic) IBOutlet UIButton *severe;

@property (retain, nonatomic) IBOutlet UIButton *narrow;

@property (retain, nonatomic) IBOutlet UITextField *narrowtext;

@property (retain, nonatomic) IBOutlet UIButton *sch;
@property (retain, nonatomic) IBOutlet UITextField *schtext;
@property (retain, nonatomic) IBOutlet UIButton *anterior;

@property (retain, nonatomic) IBOutlet UITextField *anteriortext;
@property (retain, nonatomic) IBOutlet UIButton *sub;
@property (retain, nonatomic) IBOutlet UITextField *subtext;
@property (retain, nonatomic) IBOutlet UIButton *foraminal;


@property (retain, nonatomic) IBOutlet UISegmentedControl *dlt;

@property (retain, nonatomic) IBOutlet UITextField *foraminaltext;


@property (retain, nonatomic) IBOutlet UIButton *oster;

@property (retain, nonatomic) IBOutlet UISegmentedControl *osterseg;

@property (retain, nonatomic) IBOutlet UIButton *apex;
@property (retain, nonatomic) IBOutlet UITextField *apextext;

@property (retain, nonatomic) IBOutlet UITextField *softtext;

@property (retain, nonatomic) IBOutlet UITextField *othertext;

@property (retain, nonatomic) IBOutlet UIButton *other;
@property (retain, nonatomic) IBOutlet UIButton *soft;
@property (retain, nonatomic)NSMutableDictionary *recorddict;

@property (retain, nonatomic) IBOutlet UIButton *mi;

@property (retain, nonatomic) IBOutlet UIButton *mo;

@property (retain, nonatomic) IBOutlet UIButton *se;

@property (retain, nonatomic) IBOutlet UIButton *cancel;
























@end
