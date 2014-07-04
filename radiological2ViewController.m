//
//  radiological2ViewController.m
//  radiological
//
//  Created by deemsys on 3/3/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "radiological2ViewController.h"
#import "radiological1ViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "radiological3ViewController.h"
#import "radiologicalViewController.h"


@interface radiological2ViewController ()

@end

@implementation radiological2ViewController
@synthesize  grade;
@synthesize spon;
@synthesize lumb;
@synthesize views;
@synthesize neg;
@synthesize bre;
@synthesize bretext;
@synthesize fact;
@synthesize  hypo;
@synthesize nor;
@synthesize hyper;
@synthesize  hyposeg;
@synthesize  norseg;
@synthesize  hyperseg;
@synthesize sponseg;
@synthesize decrlf;
@synthesize decllf;
@synthesize gradeseg;
@synthesize sac;
@synthesize deg;
@synthesize degseg;
@synthesize  mild;
@synthesize moderate;
@synthesize severe;
@synthesize narrow;
@synthesize narrowtext;
@synthesize  anterior;
@synthesize  anteriortext;
@synthesize  sub;
@synthesize subtext;
@synthesize  sch;
@synthesize schtext;

@synthesize oster;
@synthesize osterseg;

@synthesize dlt;
@synthesize mi;
@synthesize mo;
@synthesize se;
@synthesize apex;
@synthesize apextext;
@synthesize soft;
@synthesize softtext;
@synthesize other;
@synthesize  othertext;
@synthesize recorddict;
@synthesize  other1;
@synthesize other1text;
@synthesize cancel;
@synthesize reset;

- (id)initWithStyleSheet:(NSObject<TWMessageBarStyleSheet> *)stylesheet
{
    self = [super init];
    if (self)
    {
        [TWMessageBarManager sharedInstance].styleSheet = stylesheet;
    }
    return self;
}

- (id)init
{
    return [self initWithStyleSheet:nil];
}



-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (IBAction)views:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        viewl=@"A-P lower";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        viewl=@"L lateral";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        viewl=@"RPO";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        viewl=@"LPO";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        viewl=@"RlF";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        viewl=@"LLF";
    }
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (IBAction)oster:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ostersegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ostersegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        ostersegl=@"Severe";
    }
    
}
- (IBAction)hyper:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        hypersegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        hypersegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        hypersegl=@"Severe";
    }
    
    
}
- (IBAction)nor:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        norsegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        norsegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        norsegl=@"Severe";
    }
    
}
- (IBAction)hypo:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        hyposegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        hyposegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        hyposegl=@"Severe";
    }
    
}
- (IBAction)deg:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        degsegl=@"L-1/2";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        degsegl=@"L-2/3";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        degsegl=@"L-3/4";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        degsegl=@"L-4/5";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        degsegl=@"L-5/S-1";
    }
}

- (IBAction)spon:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        sponsegl=@"L-4";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        sponsegl=@"L-5";
    }
    
}

- (IBAction)grade:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        gradesegl=@"I";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        gradesegl=@"II";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        gradesegl=@"III";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        gradesegl=@"VI";
    }
    
    
}
- (IBAction)dlt:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        dltsegl=@"Dextro";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        dltsegl=@"Levo Scoliosis";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        dltsegl=@"Towering";
    }
}


- (IBAction)NEXT:(id)sender {
    
    if(neg.selected)
    {
        
        [recorddict setValue:@" Negative for recent fracture, dislocation or gross Osteopathology"forKey:@"L_negative for recent"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_negative for recent"];
    }
    if(decllf.selected)
    {
        
        
        [recorddict setValue:@"  Decreased LLF" forKey:@"L_decllf1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_decllf1"];
        
    }
    if(decrlf.selected)
    {
        
        
        [recorddict setValue:@" Decreased RLF" forKey:@"L_decrlf1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_decrlf1"];
        
    }
    
    if(hypo.selected)
    {
        
        
        [recorddict  setValue:@"  Hypokyphosis" forKey:@"L_hypokypho1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_hypokypho1"];
    }
    if(bre.selected)
    {
        
        
        [recorddict  setValue:@" Break in Georges line at" forKey:@"L_break1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_break1"];
        
    }
    if(sac.selected)
    {
        
        [recorddict setValue:@"Sacralization" forKey:@"L_sac1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_sac1"];
    }
    if(nor.selected)
    {
        
        
        [recorddict setValue:@" Normalkyphosis" forKey:@"L_normalkypho1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_normalkypho1"];
        
    }
    if(hyper.selected)
    {
        
        
        [recorddict  setValue:@"Hyperkyphosis" forKey:@"L_hyperkypho1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_hyperkypho1"];
    }
    if(lumb.selected)
    {
        
        
        [recorddict  setValue:@"  Lumbarization" forKey:@"L_lumb1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_lumb1"];
        
    }
    if(fact.selected)
    {
        
        [recorddict setValue:@" Facet tropism" forKey:@"L_fact1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_fact1"];
    }
    if(deg.selected)
    {
        
        
        [recorddict setValue:@"Degenerative joint disease at" forKey:@"L_degen1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_degen1"];
        
    }
    if(mild.selected)
    {
        
        
        [recorddict  setValue:@"mild" forKey:@"L_mild1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_mild1"];
    }
    if(moderate.selected)
    {
        
        
        [recorddict  setValue:@"moderate" forKey:@"L_moderate1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_moderate1"];
        
    }
    if(severe.selected)
    {
        
        [recorddict setValue:@"severe" forKey:@"L_severe1"];
    }
    else
    {
        [recorddict  setValue:@"" forKey:@"L_severe1"];
    }
    if(narrow.selected)
    {
        
        
        [recorddict setValue:@"  Narrowed disc space at" forKey:@"L_narrow11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_narrow11"];
        
    }
    if(anterior.selected)
    {
        
        
        [recorddict  setValue:@"  Anterior vertebral body osteophytes at"forKey:@"L_anterior11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_anterior11"];
    }
    if(sub.selected)
    {
        
        
        [recorddict  setValue:@" Subchondral sclerosis of" forKey:@"L_sub11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_sub11"];
        
    }
    if(sch.selected)
    {
        
        [recorddict setValue:@" Schmorl's nodes at"
                      forKey:@"L-sch11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_sch11"];
    }
    if(grade.selected)
    {
        
        
        [recorddict setValue:@"grade" forKey:@"L_grade1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_grade1"];
        
    }
    if(oster.selected)
    {
        
        
        [recorddict  setValue:@" Osteoporosis" forKey:@"L_osterporo11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_osterporo11"];
    }
    if(other1.selected)
    {
        
        
        [recorddict  setValue:@"other" forKey:@"L_other111"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_other111"];
        
    }
    if(spon.selected)
    {
        
        [recorddict setValue:@" Spondylolisthesis of" forKey:@"L_spon1"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_spon1"];
    }
    if(mi.selected)
    {
        
        
        [recorddict setValue:@"mi1d" forKey:@"L_mild11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_mild11"];
        
    }
    if(mo.selected)
    {
        
        
        [recorddict  setValue:@"moderate" forKey:@"L_moderate11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_moderate11"];
    }
    if(se.selected)
    {
        
        
        [recorddict  setValue:@"severe" forKey:@"Lsevere11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_severe11"];
        
    }
    
    if(apex.selected)
    {
        
        
        [recorddict setValue:@"Apex at" forKey:@"L_apex11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_apex11"];
        
    }
    if(soft.selected)
    {
        
        
        [recorddict  setValue:@" Soft tissue edema of" forKey:@"L_soft11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_soft11"];
    }
    if(other.selected)
    {
        
        
        [recorddict  setValue:@"other" forKey:@"L_other11"];
    }
    else
    {
        
        [recorddict  setValue:@"" forKey:@"L_other11"];
        
    }
    
    
    
    a=1;
    temp1 = [bretext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [other1text.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [schtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 = [apextext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 = [softtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[othertext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[narrowtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[anteriortext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[subtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if((([temp1 length]>0)&&([self validateNames:temp1]==1))||([temp1 length]==0))
    {
        if((([temp7 length]>0)&&([self validateNames:temp7 ]==1))||([temp7 length]==0))
        {
            if((([temp8 length]>0)&&([self validateNames:temp8 ]==1))||([temp8 length]==0))
            {
                if((([temp3 length]>0)&&([self validateNames:temp3 ]==1))||([temp3 length]==0))
                {
                    if((([temp9 length]>0)&&([self validateNames:temp9 ]==1))||([temp9 length]==0))
                    {
                        if((([temp2 length]>0)&&([self validateNames:temp2]==1))||([temp2 length]==0))
                        {
                            if((([temp4 length]>0)&&([self validateNames:temp4]==1))||([temp4 length]==0))
                            {
                                if((([temp5 length]>0)&&([self validateNames:temp5]==1))||([temp5 length]==0))
                                {
                                    if((([temp6 length]>0)&&([self validateNames:temp6]==1))||([temp6 length]==0))
                                    {
                                        [recorddict setValue:ostersegl forKey:@"L_oster"];
                                        [recorddict setValue:subtext.text forKey:@"L_sub"];
                                        [recorddict setValue:schtext.text forKey:@"L_sch"];
                                        [recorddict setValue:apextext.text forKey:@"L_apex"];
                                        [recorddict setValue:softtext.text forKey:@"L_soft"];
                                        [recorddict setValue:othertext.text forKey:@"L_other"];
                                        [recorddict setValue:narrowtext.text forKey:@"L_narrow"];
                                        
                                        [recorddict setValue:anteriortext.text forKey:@"L_anterior"];
                                        [recorddict setValue:viewl forKey:@"L_views"];
                                        [recorddict setValue:hyposegl forKey:@"L_hypo"];
                                        [recorddict setValue:norsegl forKey:@"L_normal"];
                                        [recorddict setValue:hypersegl forKey:@"L_hyper"];
                                        [recorddict setValue:bretext.text forKey:@"L_break"];
                                        [recorddict setValue:dltsegl forKey:@"L_dlt"];
                                        ;
                                        [recorddict setValue:degsegl forKey:@"L_Degenerative joint "];
                                        ;
                                        
                                        [recorddict setValue:other1text.text forKey:@"L_other1"];
                                        [recorddict setValue:sponsegl forKey:@"L_spon"];
                                        ;
                                        [recorddict setValue:gradesegl forKey:@"L_grade"];
                                        
                                        
                                        
                                        
                                        if(a==1)
                                        {
                                            [self performSegueWithIdentifier:@"radio3" sender:self];
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Enter valid other text."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Enter valid soft text."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Enter valid apex."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Enter valid other text."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Enter valid subchondral soft text."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Enter valid sch text."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    
                    
                }
                
                
            }
            else
            {
                a=0;
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Enter valid anterior vertebral body osteophytes at text."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
            }
        }
        else
        {
            a=0;
            
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter valid narrowed disc space at text."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
            
            
        }
    }
    else
    {
        a=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter valid breakin georges."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
        
    }
}


- (IBAction)checkboxselected:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(nor.selected)
    {
        norseg. hidden=NO;
    }
    else{
        norseg.hidden=YES;
        
    }
    
    if(hypo.selected)
    {
        hyposeg. hidden=NO;
    }
    else{
        hyposeg.hidden=YES;
        
    }
    if(hyper.selected)
    {
        hyperseg. hidden=NO;
    }
    else{
        hyperseg.hidden=YES;
        
    }
    if(narrow.selected)
    {
        narrowtext. hidden=NO;
    }
    else{
        narrowtext.hidden=YES;
        
    }
    
    if(anterior.selected)
    {
        anteriortext. hidden=NO;
    }
    else{
        anteriortext.hidden=YES;
        
    }
    if(sub.selected)
    {
        subtext. hidden=NO;
    }
    else{
        subtext.hidden=YES;
        
    }
    
    if(sch.selected)
    {
        schtext. hidden=NO;
    }
    else{
        schtext.hidden=YES;
        
    }
    if(spon.selected)
    {
        sponseg.hidden=NO;
    }
    else{
        sponseg.hidden=YES;
        
    }
    if(grade.selected)
    {
        gradeseg. hidden=NO;
    }
    else{
        gradeseg.hidden=YES;
        
    }
    if(deg.selected)
    {
        degseg. hidden=NO;
    }
    else{
        degseg.hidden=YES;
        
    }
    
    if(oster.selected)
    {
        osterseg. hidden=NO;
    }
    else{
        osterseg.hidden=YES;
        
    }
    
    if(apex.selected)
    {
        apextext. hidden=NO;
    }
    else{
        apextext.hidden=YES;
        
    }
    
    if(soft.selected)
    {
        softtext. hidden=NO;
    }
    else{
        softtext.hidden=YES;
        
    }
    
    if(other.selected)
    {
        othertext. hidden=NO;
    }
    else{
        othertext.hidden=YES;
        
    }
    if(bre.selected)
    {
        bretext. hidden=NO;
    }
    else{
        bretext.hidden=YES;
        
    }
    
    if(other1.selected)
    {
        other1text. hidden=NO;
    }
    else{
        other1text.hidden=YES;
        
    }
    if(bre.selected)
    {
        bretext. hidden=NO;
    }
    else{
        bretext.hidden=YES;
        
    }
    
    
    
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"radio3"])
    {
        if (a==1)
        {
            return YES;
        }
        else
        {
            
            return NO;
        }
    }
    else
        return NO;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if ([segue.identifier isEqualToString:@"radio3"])
    {
        
        
        radiological3ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in radio third %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}
- (IBAction)reset:(id)sender {
    
    bretext.text=@"";
    other1text.text=@"";
    schtext.text=@"";
    apextext.text=@"";
    softtext.text=@"";
    othertext.text=@"";
    narrowtext.text=@"";
    anteriortext.text=@"";
    subtext.text=@"";
    viewl=@"A-P lower";
    hyposegl=@"mild";
    hypersegl=@"mild";
    norsegl=@"mild";
    degsegl=@"C-2/3";
    foraminalsegl=@"C-2/3";
    ostersegl=@"mild";
    sponsegl=@"L-4";
    degsegl=@"L 1/2";
    dltsegl=@"Dextro";
    [views setSelectedSegmentIndex:0];
    [osterseg setSelectedSegmentIndex:0];
    [hyperseg setSelectedSegmentIndex:0];
    [norseg setSelectedSegmentIndex:0];
    [hyposeg setSelectedSegmentIndex:0];
    [degseg setSelectedSegmentIndex:0];
    [sponseg setSelectedSegmentIndex:0];
    [gradeseg setSelectedSegmentIndex:0];
    [dlt setSelectedSegmentIndex:0];
    
    nor.selected=NO;
    hypo.selected=NO;
    hyper.selected=NO;
    narrow.selected=NO;
    anterior.selected=NO;
    sub.selected=NO;
    sch.selected=NO;
    spon.selected=NO;
    grade.selected=NO;
    deg.selected=NO;
    oster.selected=NO;
    apex.selected=NO;
    soft.selected=NO;
    other.selected=NO;
    neg.selected=NO;
    mild.selected=NO;
    moderate.selected=NO;
    severe.selected=NO;
    mi.selected=NO;
    se.selected=NO;
    mo.selected=NO;
    fact.selected=NO;
    decllf.selected=NO;
    decrlf.selected=NO;
    sac.selected=NO;
    lumb.selected=NO;
    
    
    other1.selected=NO;
    bre.selected=NO;
    
    bretext .hidden=YES;
    hyposeg.hidden=YES;
    norseg.hidden=YES;
    hyperseg.hidden=YES;
    degseg.hidden=YES;
    narrowtext .hidden=YES;
    anteriortext .hidden=YES;
    subtext .hidden=YES;
    schtext .hidden=YES;
    sponseg.hidden=YES;
    gradeseg.hidden=YES;
    other1text.hidden=YES;
    grade.hidden=YES;
    osterseg.hidden=YES;
    apextext .hidden=YES;
    softtext .hidden=YES;
    othertext .hidden=YES;
    [neg setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [decllf setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [decrlf setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [fact setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [sac setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [lumb setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [se setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mi setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mo setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [severe setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mild setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [moderate setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [se setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [nor setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [hypo setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [hyper setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [narrow setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [anterior setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [sub setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [sch setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [spon setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [grade setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [deg setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [oster setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [apex setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [soft setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [other setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [other1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [bre setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    gradesegl=@"I";
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    bretext .hidden=YES;
    hyposeg.hidden=YES;
    norseg.hidden=YES;
    hyperseg.hidden=YES;
    degseg.hidden=YES;
    narrowtext .hidden=YES;
    anteriortext .hidden=YES;
    subtext .hidden=YES;
    schtext .hidden=YES;
    sponseg.hidden=YES;
    gradeseg.hidden=YES;
    other1text.hidden=YES;
    osterseg.hidden=YES;
    apextext .hidden=YES;
    softtext .hidden=YES;
    othertext .hidden=YES;
    viewl=@"A-P lower";
    hyposegl=@"mild";
    hypersegl=@"mild";
    norsegl=@"mild";
    degsegl=@"C-2/3";
    foraminalsegl=@"C-2/3";
    ostersegl=@"mild";
    sponsegl=@"L-4";
    degsegl=@"L 1/2";
    dltsegl=@"Dextro";
    gradesegl=@"I";
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [cancel release];
    [reset release];
    [super dealloc];
}
@end
