//
//  Patient1ViewController.h
//  EHR
//
//  Created by Admin on 29/04/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "StringConstants.h"
#import "TWMessageBarManager.h"


@interface Patient1ViewController :UIViewController<UITextViewDelegate,UIScrollViewDelegate>
{
    NSMutableDictionary *recorddict;
    int inc;
    int x,y;
    int texttag,buttontag;
    int buttonx,buttony;
    IBOutlet UITextView *textview1;
    NSMutableArray *symptomdata;
    
}
@property (retain, nonatomic)NSMutableDictionary *resultset;
@property (retain, nonatomic) IBOutlet UITextView *textview1;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UIButton *addmore;
@property (retain, nonatomic) IBOutlet UIScrollView *scrollview;
@property (retain, nonatomic) IBOutlet UIButton *next;
@property (retain, nonatomic) IBOutlet UIImageView *imageview;
@property (nonatomic, retain)NSMutableDictionary *staff;
@property (retain, nonatomic) IBOutlet UIButton *reset;




@end
