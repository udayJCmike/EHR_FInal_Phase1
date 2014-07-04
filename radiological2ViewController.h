//
//  radiological2ViewController.h
//  radiological
//
//  Created by deemsys on 3/3/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TextFieldDatePicker.h"
@interface radiological2ViewController : UIViewController<TextFieldDatePickerDelegate>
{
    int a;
    NSMutableDictionary *recorddict;
    NSString *temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18;
    
    IBOutlet UISegmentedControl *views;
    IBOutlet UIButton *neg;
    
    IBOutlet UIButton *bre;
    
    
    IBOutlet UIButton *oster;
    
    IBOutlet UISegmentedControl *osterseg;
    
    IBOutlet UIButton *hyper;
    IBOutlet UISegmentedControl *hyperseg;
    
    IBOutlet UIButton *nor;
    
    IBOutlet UISegmentedControl *norseg;
    IBOutlet UIButton *hypo;
    
    IBOutlet UISegmentedControl *hyposeg;
    
    IBOutlet UIButton *moderate;
    IBOutlet UIButton *deg;
    
    IBOutlet UISegmentedControl *degseg;
    
    IBOutlet UIButton *narrow;
    
    IBOutlet UIButton *severe;
    IBOutlet UIButton *mild;
    IBOutlet UIButton *mo;
    IBOutlet UIButton *mi;
    IBOutlet UIButton *cancel;
    IBOutlet UISegmentedControl *dlt;
    IBOutlet UITextField *othertext;
    IBOutlet UIButton *other;
    IBOutlet UITextField *narrowtext;
    IBOutlet UIButton *anterior;
    IBOutlet UITextField *anteriortext;
    IBOutlet UIButton *sch;
    IBOutlet UITextField *schtext;
    IBOutlet UIButton *sub;
    IBOutlet UITextField *subtext;
    IBOutlet UIButton *spon;
    IBOutlet UISegmentedControl *sponseg;
    IBOutlet UIButton *other1;
    IBOutlet UITextField *other1text;
    IBOutlet UIButton *grade;
    IBOutlet UISegmentedControl *gradeseg;
    IBOutlet UIButton *decrlf;
    IBOutlet UIButton *decllf;
    IBOutlet UITextField *softtext;
    
    IBOutlet UIButton *soft;
    IBOutlet UITextField *apextext;
    IBOutlet UIButton *fact;
    IBOutlet UIButton *sac;
    IBOutlet UIButton *apex;
    
    IBOutlet UIButton *reset;
    IBOutlet UIButton *se;
    IBOutlet UIButton *lumb;
    NSString *viewl;
    NSString *hyposegl;
    NSString *norsegl;
    NSString *hypersegl;
    NSString *degsegl;
    NSString *foraminalsegl;
    NSString *ostersegl;
    NSString *gradesegl;
    NSString *sponsegl;
    NSString *dltsegl;
    
}
- (IBAction)cancel:(id)sender;
- (IBAction)reset:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *views;
@property (retain, nonatomic) IBOutlet UIButton *neg;
@property (retain, nonatomic) IBOutlet UIButton *bre;
@property (retain, nonatomic) IBOutlet UITextField *bretext;
@property (retain, nonatomic) IBOutlet UIButton *oster;
@property (retain, nonatomic) IBOutlet UISegmentedControl *osterseg;
@property (retain, nonatomic) IBOutlet UIButton *hyper;
@property (retain, nonatomic) IBOutlet UISegmentedControl *hyperseg;
@property (retain, nonatomic) IBOutlet UIButton *nor;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
@property (retain, nonatomic) IBOutlet UISegmentedControl *norseg;

@property (retain, nonatomic) IBOutlet UIButton *hypo;
@property (retain, nonatomic) IBOutlet UISegmentedControl *hyposeg;
@property (retain, nonatomic) IBOutlet UIButton *deg;
@property (retain, nonatomic) IBOutlet UISegmentedControl *degseg;
@property (retain, nonatomic) IBOutlet UIButton *mild;
@property (retain, nonatomic) IBOutlet UIButton *moderate;
@property (retain, nonatomic) IBOutlet UIButton *severe;
@property (retain, nonatomic) IBOutlet UIButton *narrow;

@property (retain, nonatomic) IBOutlet UITextField *narrowtext;
@property (retain, nonatomic) IBOutlet UITextField *anteriortext;


@property (retain, nonatomic) IBOutlet UIButton *anterior;
@property (retain, nonatomic) IBOutlet UIButton *sub;
@property (retain, nonatomic) IBOutlet UITextField *subtext;

@property (retain, nonatomic) IBOutlet UIButton *sch;
@property (retain, nonatomic) IBOutlet UITextField *schtext;
@property (retain, nonatomic) IBOutlet UIButton *spon;
@property (retain, nonatomic) IBOutlet UISegmentedControl *sponseg;
@property (retain, nonatomic) IBOutlet UIButton *other1;
@property (retain, nonatomic) IBOutlet UITextField *other1text;
@property (retain, nonatomic) IBOutlet UIButton *grade;
@property (retain, nonatomic) IBOutlet UISegmentedControl *gradeseg;
@property (retain, nonatomic) IBOutlet UIButton *decrlf;
@property (retain, nonatomic) IBOutlet UIButton *decllf;
@property (retain, nonatomic) IBOutlet UIButton *fact;
@property (retain, nonatomic) IBOutlet UIButton *sac;
@property (retain, nonatomic) IBOutlet UIButton *lumb;
@property (retain, nonatomic) IBOutlet UISegmentedControl *dlt;
@property (retain, nonatomic) IBOutlet UIButton *mi;
@property (retain, nonatomic) IBOutlet UIButton *mo;
@property (retain, nonatomic) IBOutlet UIButton *reset;
@property (retain, nonatomic) IBOutlet UIButton *se;
@property (retain, nonatomic) IBOutlet UIButton *apex;
@property (retain, nonatomic) IBOutlet UITextField *apextext;
@property (retain, nonatomic) IBOutlet UIButton *soft;
@property (retain, nonatomic) IBOutlet UITextField *softtext;
@property (retain, nonatomic) IBOutlet UIButton *other;
@property (retain, nonatomic) IBOutlet UITextField *othertext;

@property (retain, nonatomic)NSMutableDictionary *recorddict;

@end
