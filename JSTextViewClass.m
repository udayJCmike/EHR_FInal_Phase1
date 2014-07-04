//
//  JSTextViewClass.m
//  JSTextViewDemo
//
//  Created by Jack Solomon on 4/12/2013.
//  Copyright (c) 2013 99cents. All rights reserved.
//

#import "JSTextViewClass.h"

@implementation JSTextViewClass
-(void)awakeFromNib{
    self.layer.borderWidth =2.0;
    //    self.layer.borderColor = [[UIColor colorWithRed:204/255.0f green:204/255.0f blue:204/255.0f alpha:2.0f] CGColor];
    self.layer.borderColor =[[[UIColor grayColor] colorWithAlphaComponent:0.5] CGColor];
    self.layer.cornerRadius = 5;
    self.clipsToBounds=YES;
    self.delegate = self;
    
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.delegate = self;
    }
    return self;
}




@end
