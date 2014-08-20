//
//  footViewController.m
//  foot
//
//  Created by DeemsysInc on 2/19/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "footViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "foot1ViewController.h"
#import "hamilViewController.h"
#import "databaseurl.h"

@interface footViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}

@end

@implementation footViewController
@synthesize patientname;
@synthesize date;

@synthesize ao;
@synthesize pronation;
@synthesize supination;
@synthesize forefoot;
@synthesize varus;
@synthesize valgus;
@synthesize forefootvalgus;
@synthesize palpation;
@synthesize rangeofmotion;
@synthesize orthotesting;
@synthesize flexionleft;
@synthesize flexionright;
@synthesize dorsiflexionleft;
@synthesize dorsiflexionright;
@synthesize inversionright;
@synthesize inversionleft;
@synthesize eversionleft;
@synthesize eversionright;
@synthesize greatextensionleft;
@synthesize greatextensionright;
@synthesize greatflexionleft;
@synthesize greatflexionright;
@synthesize tinelleft;
@synthesize tinelright;
@synthesize achillesleft;
@synthesize achillesright;
@synthesize longleft;
@synthesize longright;
@synthesize thompsonleft;
@synthesize thompsonright;
@synthesize drawerleft;
@synthesize drawerright;
@synthesize lateralleft;
@synthesize lateralright;
@synthesize medialleft;
@synthesize medialright;
@synthesize neurological;
@synthesize l1left;
@synthesize l1right;
@synthesize l2left;
@synthesize l2right;
@synthesize l3left;
@synthesize l3right;
@synthesize l4left;
@synthesize l4right;
@synthesize l5left;
@synthesize l5right;
@synthesize s1left;
@synthesize s1right;
@synthesize ml1left;
@synthesize ml1right;
@synthesize ml2left;
@synthesize ml2right;
@synthesize ml3left;
@synthesize ml3right;
@synthesize ml4left;
@synthesize ml4right;
@synthesize ml5left;
@synthesize ml5right;
@synthesize ms1left;
@synthesize ms1right;
@synthesize recorddict;
@synthesize gait;
@synthesize muscletf;
@synthesize swellingtf;
@synthesize notes;

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
    NSString *countryFormat1 = @"[A-Za-z0-9._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validateNames2:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)cancel:(id)sender
{
    for (id controller in [self.navigationController viewControllers])
    {
        if ([controller isKindOfClass:[hamilViewController class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            break;
        }
    }
    //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateNumbers1:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9_-]{1,4}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	//NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	//NSLog(@"begin editing");
}
-(BOOL)validateNumberlimit:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)next:(id)sender {
    
    
    //    [recorddict addEntriesFromDictionary: recorddict];
    //    forward.text=@"hello";
    temp1 =patientname.text;
    temp2 =flexionleft.text;
    temp3 =flexionright.text;
    temp4 =muscletf.text;
    temp5 =dorsiflexionleft.text;
    temp6=dorsiflexionright.text;
    temp7=inversionleft.text;
    temp8=inversionright.text;
    temp9=eversionleft.text;
    temp10=eversionright.text;
    temp11=greatextensionleft.text;
    temp12=greatextensionright.text;
    temp13=greatflexionleft.text;
    temp14=greatflexionright.text;
    temp15=tinelleft.text;
    temp16=tinelright.text;
    temp17=achillesleft.text;
    temp18=achillesright.text;
    temp19=longleft.text;
    temp20=longright.text;
    temp21=thompsonleft.text;
    temp22=thompsonright.text;
    temp23=drawerleft.text;
    temp24=drawerright.text;
    temp25=lateralleft.text;
    temp26=lateralright.text;
    temp27=medialleft.text;
    temp28=medialright.text;
    temp29=l1left.text;
    temp30=l1right.text;
    temp31=l2left.text;
    temp32=l2right.text;
    temp33=l3left.text;
    temp34=l3right.text;
    temp35=l4left.text;
    temp36=l4right.text;
    temp37=s1left.text;
    temp38=s1right.text;
    temp39=ml1left.text;
    temp40=ml1right.text;
    temp41=ml2left.text;
    temp42=ml2right.text;
    temp43=ml3left.text;
    temp44=ml3right.text;
    temp45=ml4left.text;
    temp46=ml4right.text;
    temp47=ml5left.text;
    temp48=ml5right.text;
    temp49=ms1left.text;
    temp50=ms1right.text;
    temp51=swellingtf.text;
    temp52=notes.text;
    temp52=[temp52 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    temp52=[temp52 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    temp52=[temp52 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    temp53=l5left.text;
    temp54=l5right.text;
    if(palpation.selected)
    {
        palpationlabel=@"All Soft Tissue Unremarkable";
        
    }
    else
        palpationlabel=@"null";
    if(rangeofmotion.selected)
    {
        rangeofmotionlabel=@"Unremarkable";
        
        
    }
    else
        rangeofmotionlabel=@"null";
    if(orthotesting.selected)
    {
        orthotestinglabel=@"Unremarkable";
    }
    else
        orthotestinglabel=@"null";
    if(neurological.selected)
    {
        neurologicallabel=@"Neurological Testing Unremarkable";
    }
    else
        neurologicallabel=@"null";
    
    if(([temp1 length]!=0)&&([date.text length]!=0))
    {
        a=0;
        
        if ([du patname:[patientname text]]==1)
        {
            if ([self validateDate:date.text]==1)
            {
                if((([temp4 length]>0)&&([du otherfields:temp4 ]==1))||([temp4 length]==0))
                {
                    if((([temp51 length]>0)&&([du otherfields:temp51 ]==1))||([temp51 length]==0))
                    {
                        if((([temp52 length]>0)&&([du otherfields:temp52 ]==1))||([temp52 length]==0))
                        {
                            if((([temp2 length]>0)&&([du date:temp2]==1))||([temp2 length]==0))
                            {
                                if((([temp3 length]>0)&&([du date:temp3 ]==1))||([temp3 length]==0))
                                    
                                {
                                    if((([temp5 length]>0)&&([du date:temp5]==1))||([temp5 length]==0))
                                    {
                                        if((([temp6 length]>0)&&([du date:temp6]==1))||([temp6 length]==0))
                                        {
                                            if((([temp7 length]>0)&&([du date:temp7]==1))||([temp7 length]==0))
                                            {
                                                if((([temp8 length]>0)&&([du date:temp8]==1))||([temp8 length]==0))
                                                {
                                                    if((([temp9 length]>0)&&([du date:temp9]==1))||([temp9 length]==0))
                                                    {
                                                        if((([temp10 length]>0)&&([du date:temp10 ]==1))||([temp10 length]==0))
                                                        {
                                                            if((([temp11 length]>0)&&([du date:temp11]==1))||([temp11 length]==0))
                                                            {
                                                                if((([temp12 length]>0)&&([du date:temp12]==1))||([temp12 length]==0))
                                                                {
                                                                    if((([temp13 length]>0)&&([du date:temp13]==1))||([temp13 length]==0))
                                                                    {
                                                                        if((([temp14 length]>0)&&([du date:temp14]==1))||([temp14 length]==0))
                                                                        {
                                                                            if((([temp15 length]>0)&&([du date:temp15]==1))||([temp15 length]==0))
                                                                            {
                                                                                if((([temp16 length]>0)&&([du date:temp16]==1))||([temp16 length]==0))
                                                                                {
                                                                                    if((([temp17 length]>0)&&([du date:temp17]==1))||([temp17 length]==0))
                                                                                    {
                                                                                        if((([temp18 length]>0)&&([du date:temp18]==1))||([temp18 length]==0))
                                                                                        {
                                                                                            if((([temp19 length]>0)&&([du date:temp19]==1))||([temp19 length]==0))
                                                                                            {
                                                                                                if((([temp20 length]>0)&&([du date:temp20]==1))||([temp20 length]==0))
                                                                                                {
                                                                                                    if((([temp21 length]>0)&&([du date:temp21]==1))||([temp21 length]==0))
                                                                                                    {
                                                                                                        if((([temp22 length]>0)&&([du date:temp22]==1))||([temp22 length]==0))
                                                                                                        {
                                                                                                            if((([temp23 length]>0)&&([du date:temp23 ]==1))||([temp23 length]==0))
                                                                                                            {
                                                                                                                if((([temp24 length]>0)&&([du date:temp24]==1))||([temp24 length]==0))
                                                                                                                {
                                                                                                                    if((([temp25 length]>0)&&([du date:temp25 ]==1))||([temp25 length]==0))
                                                                                                                    {
                                                                                                                        if((([temp26 length]>0)&&([du date:temp26 ]==1))||([temp26 length]==0))
                                                                                                                        {
                                                                                                                            if((([temp27 length]>0)&&([du date:temp27]==1))||([temp27 length]==0))
                                                                                                                            {
                                                                                                                                if((([temp28 length]>0)&&([du date:temp28 ]==1))||([temp28 length]==0))
                                                                                                                                {
                                                                                                                                    if((([temp29 length]>0)&&([du date:temp29]==1))||([temp29 length]==0))
                                                                                                                                    {
                                                                                                                                        if((([temp30 length]>0)&&([du date:temp30]==1))||([temp30 length]==0))
                                                                                                                                        {
                                                                                                                                            if((([temp31 length]>0)&&([du date:temp31]==1))||([temp31 length]==0))
                                                                                                                                            {
                                                                                                                                                if((([temp32 length]>0)&&([du date:temp32 ]==1))||([temp32 length]==0))
                                                                                                                                                {
                                                                                                                                                    if((([temp33 length]>0)&&([du date:temp33]==1))||([temp33 length]==0))
                                                                                                                                                    {
                                                                                                                                                        if((([temp34 length]>0)&&([du date:temp34 ]==1))||([temp34 length]==0))
                                                                                                                                                        {
                                                                                                                                                            if((([temp35 length]>0)&&([du date:temp35]==1))||([temp35 length]==0))
                                                                                                                                                            {
                                                                                                                                                                if((([temp36 length]>0)&&([du date:temp36 ]==1))||([temp36 length]==0))
                                                                                                                                                                    
                                                                                                                                                                {
                                                                                                                                                                    if((([temp53 length]>0)&&([du date:temp53 ]==1))||([temp53 length]==0))
                                                                                                                                                                    {
                                                                                                                                                                        if((([temp54 length]>0)&&([du date:temp54 ]==1))||([temp54 length]==0))                                                                                                  {
                                                                                                                                                                            
                                                                                                                                                                            if((([temp37 length]>0)&&([du date:temp37 ]==1))||([temp37 length]==0))
                                                                                                                                                                            {
                                                                                                                                                                                
                                                                                                                                                                                if((([temp38 length]>0)&&([du date:temp38 ]==1))||([temp38 length]==0))
                                                                                                                                                                                {
                                                                                                                                                                                    
                                                                                                                                                                                    if((([temp39 length]>0)&&([du byfive:temp39 ]==1))||([temp39 length]==0))
                                                                                                                                                                                    {
                                                                                                                                                                                        
                                                                                                                                                                                        if((([temp40 length]>0)&&([du byfive:temp40 ]==1))||([temp40 length]==0))
                                                                                                                                                                                        {
                                                                                                                                                                                            
                                                                                                                                                                                            if((([temp41 length]>0)&&([du byfive:temp41]==1))||([temp41 length]==0))
                                                                                                                                                                                            {
                                                                                                                                                                                                if((([temp42 length]>0)&&([du byfive:temp42]==1))||([temp42 length]==0))
                                                                                                                                                                                                {
                                                                                                                                                                                                    if((([temp43 length]>0)&&([du byfive:temp43]==1))||([temp43 length]==0))
                                                                                                                                                                                                    {
                                                                                                                                                                                                        if((([temp44 length]>0)&&([du byfive:temp44]==1))||([temp44 length]==0))
                                                                                                                                                                                                        {
                                                                                                                                                                                                            if((([temp45 length]>0)&&([du byfive:temp45]==1))||([temp45 length]==0))
                                                                                                                                                                                                            {
                                                                                                                                                                                                                if((([temp46 length]>0)&&([du byfive:temp46]==1))||([temp46 length]==0))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    if((([temp47 length]>0)&&([du byfive:temp47]==1))||([temp47 length]==0))
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        if((([temp48 length]>0)&&([du byfive:temp48]==1))||([temp48 length]==0))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            if((([temp49 length]>0)&&([du byfive:temp49]==1))||([temp49 length]==0))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                if((([temp50 length]>0)&&([self validateNumberlimit:temp50]==1))||([temp50 length]==0))
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    [recorddict setValue:patientname.text forKey:@"patientname"];
                                                                                                                                                                                                                                    [recorddict setValue:gaitlabel forKey:@"gaitl"];
                                                                                                                                                                                                                                    [recorddict setValue:date.text forKey:@"date"];
                                                                                                                                                                                                                                    [recorddict setValue:flexionleft.text forKey:@"flexionleft"];
                                                                                                                                                                                                                                    [recorddict setValue:flexionright.text forKey:@"flexionright"];
                                                                                                                                                                                                                                    [recorddict setValue:dorsiflexionleft.text forKey:@"dorsiflexionleft"];
                                                                                                                                                                                                                                    [recorddict setValue:dorsiflexionright.text forKey:@"dorsiflexionright"];
                                                                                                                                                                                                                                    [recorddict setValue:inversionleft.text forKey:@"inversionleft"];
                                                                                                                                                                                                                                    [recorddict setValue:inversionright.text forKey:@"inversionright"];
                                                                                                                                                                                                                                    [recorddict setValue:eversionleft.text forKey:@"eversionleft"];
                                                                                                                                                                                                                                    [recorddict setValue:eversionright.text forKey:@"eversionright"];
                                                                                                                                                                                                                                    [recorddict setValue:greatextensionleft.text forKey:@"greatextensionleft"];
                                                                                                                                                                                                                                    [recorddict setValue:greatextensionright.text forKey:@"greatextensionright"];
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    [recorddict setValue:greatflexionleft.text forKey:@"greatflexionleft"];
                                                                                                                                                                                                                                    [recorddict setValue:greatflexionright.text forKey:@"greatflexionright"];
                                                                                                                                                                                                                                    [recorddict setValue:tinelleft.text forKey:@"tinelleft"];
                                                                                                                                                                                                                                    [recorddict setValue:tinelright.text forKey:@"tinelright"];
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    [recorddict setValue:achillesleft.text forKey:@"achillesleft"];
                                                                                                                                                                                                                                    [recorddict setValue:achillesright.text forKey:@"achillesright"];
                                                                                                                                                                                                                                    [recorddict setValue:longleft.text forKey:@"longleft"];
                                                                                                                                                                                                                                    [recorddict setValue:longright.text forKey:@"longright"];
                                                                                                                                                                                                                                    [recorddict setValue:thompsonleft.text forKey:@"thompsonleft"];
                                                                                                                                                                                                                                    [recorddict setValue:thompsonright.text forKey:@"thompsonright"];
                                                                                                                                                                                                                                    [recorddict setValue:drawerleft.text forKey:@"drawerleft"];
                                                                                                                                                                                                                                    [recorddict setValue:drawerright.text forKey:@"drawerright"];
                                                                                                                                                                                                                                    [recorddict setValue:lateralleft.text forKey:@"lateralleft"];
                                                                                                                                                                                                                                    [recorddict setValue:lateralright.text forKey:@"lateralright"];
                                                                                                                                                                                                                                    [recorddict setValue:medialleft.text forKey:@"medialleft"];
                                                                                                                                                                                                                                    [recorddict setValue:medialright.text forKey:@"medialright"];
                                                                                                                                                                                                                                    [recorddict setValue:l1left.text forKey:@"l1left"];
                                                                                                                                                                                                                                    [recorddict setValue:l1right.text forKey:@"l1right"];
                                                                                                                                                                                                                                    [recorddict setValue:l2left.text forKey:@"l2left"];
                                                                                                                                                                                                                                    [recorddict setValue:l2right.text forKey:@"l2right"];
                                                                                                                                                                                                                                    [recorddict setValue:l3left.text forKey:@"l3left"];
                                                                                                                                                                                                                                    [recorddict setValue:l3right.text forKey:@"l3right"];
                                                                                                                                                                                                                                    [recorddict setValue:l4left.text forKey:@"l4left"];
                                                                                                                                                                                                                                    [recorddict setValue:l4right.text forKey:@"l4right"];
                                                                                                                                                                                                                                    [recorddict setValue:l5left.text forKey:@"l5left"];
                                                                                                                                                                                                                                    [recorddict setValue:l5right.text forKey:@"l5right"];
                                                                                                                                                                                                                                    [recorddict setValue:s1left.text forKey:@"s1left"];
                                                                                                                                                                                                                                    [recorddict setValue:s1right.text forKey:@"s1right"];
                                                                                                                                                                                                                                    [recorddict setValue:ml1left.text forKey:@"ml1left"];
                                                                                                                                                                                                                                    [recorddict setValue:ml1right.text forKey:@"ml1right"];
                                                                                                                                                                                                                                    [recorddict setValue:ml2left.text forKey:@"ml2left"];
                                                                                                                                                                                                                                    [recorddict setValue:ml2right.text forKey:@"ml2right"];
                                                                                                                                                                                                                                    [recorddict setValue:ml3right.text forKey:@"ml3left"];
                                                                                                                                                                                                                                    [recorddict setValue:ml3right.text forKey:@"ml3right"];
                                                                                                                                                                                                                                    [recorddict setValue:ml4left.text forKey:@"ml4left"];
                                                                                                                                                                                                                                    [recorddict setValue:ml4right.text forKey:@"ml4right"];
                                                                                                                                                                                                                                    [recorddict setValue:ml5left.text forKey:@"ml5left"];
                                                                                                                                                                                                                                    [recorddict setValue:ml5right.text forKey:@"ml5right"];
                                                                                                                                                                                                                                    [recorddict setValue:ms1left.text forKey:@"ms1left"];
                                                                                                                                                                                                                                    [recorddict setValue:ms1right.text forKey:@"ms1right"];
                                                                                                                                                                                                                                    [recorddict setValue:gaitlabel forKey:@"gaitll"];
                                                                                                                                                                                                                                    [recorddict setValue:muscletf.text forKey:@"muscletf"];
                                                                                                                                                                                                                                    [recorddict setValue:swellingtf.text forKey:@"swelling"];
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    [recorddict setValue:aolabel forKey:@"aoll"];
                                                                                                                                                                                                                                    [recorddict setValue:palpationlabel forKey:@"palpationlabel"];
                                                                                                                                                                                                                                    [recorddict setValue:rangeofmotionlabel forKey:@"rangeofmotionlabel"];
                                                                                                                                                                                                                                    [recorddict setValue:orthotestinglabel forKey:@"orthotestinglabel"];
                                                                                                                                                                                                                                    [recorddict setValue:neurologicallabel forKey:@"neurologicallabel"];
                                                                                                                                                                                                                                    [recorddict setValue:pronationlabel forKey:@"pronationl"];
                                                                                                                                                                                                                                    [recorddict setValue:supinationlabel forKey:@"supinationl"];
                                                                                                                                                                                                                                    [recorddict setValue:forefootlabel forKey:@"forefootl"];
                                                                                                                                                                                                                                    [recorddict setValue:varuslabel forKey:@"varusl"];
                                                                                                                                                                                                                                    [recorddict setValue:valguslabel forKey:@"valgusl"];
                                                                                                                                                                                                                                    [recorddict setValue:forefootvalguslabel forKey:@"forefootvalgusl"];
                                                                                                                                                                                                                                    [recorddict setValue:notes
                                                                                                                                                                                                                                     .text forKey:@"notesfield"];
                                                                                                                                                                                                                                    a=1;                                                                                                //NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                
                                                                                                                                                                                                                                
                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                                   description:@"Please enter valid ms1 right field."
                                                                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                a=0;
                                                                                                                                                                                                                                
                                                                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                               description:@"Please enter valid ms1 left field."
                                                                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                                                                
                                                                                                                                                                                                                                
                                                                                                                                                                                                                                
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                            
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            a=0;
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                           description:@"Please enter valid ml5 right field."
                                                                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                       description:@"Please enter valid ml5 left field."
                                                                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                   description:@"Please enter valid ml4 right field."
                                                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    
                                                                                                                                                                                                                }
                                                                                                                                                                                                                
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                                a=0;
                                                                                                                                                                                                                
                                                                                                                                                                                                                
                                                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                               description:@"Please enter valid ml4 left field."
                                                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                                                
                                                                                                                                                                                                                
                                                                                                                                                                                                                
                                                                                                                                                                                                            }
                                                                                                                                                                                                            
                                                                                                                                                                                                        }
                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                            a=0;
                                                                                                                                                                                                            
                                                                                                                                                                                                            
                                                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                           description:@"Please enter valid ml3 right field."
                                                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                                                            
                                                                                                                                                                                                            
                                                                                                                                                                                                            
                                                                                                                                                                                                        }
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                    }
                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                       description:@"Please enter valid ml3 left field."
                                                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                    }
                                                                                                                                                                                                    
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                    
                                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                   description:@"Please enter valid ml2 right field."
                                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                }
                                                                                                                                                                                                
                                                                                                                                                                                            }
                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                                a=0;
                                                                                                                                                                                                
                                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                               description:@"Please enter valid ml2 left field."
                                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                                
                                                                                                                                                                                                
                                                                                                                                                                                                
                                                                                                                                                                                                
                                                                                                                                                                                            }
                                                                                                                                                                                            
                                                                                                                                                                                        }
                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                            a=0;
                                                                                                                                                                                            
                                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                           description:@"Please enter valid ml1 right field."
                                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                                            
                                                                                                                                                                                            
                                                                                                                                                                                            
                                                                                                                                                                                            
                                                                                                                                                                                        }
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                        a=0;
                                                                                                                                                                                        
                                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                       description:@"Please enter valid ml1 left field."
                                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                    }
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                }
                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                    a=0;
                                                                                                                                                                                    
                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                   description:@"Please enter valid s1 right field."
                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                }
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                            }
                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                                a=0;
                                                                                                                                                                                
                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                               description:@"Please enter valid s1 left field."
                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                            }
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                        }
                                                                                                                                                                        
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                            a=0;
                                                                                                                                                                            
                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                           description:@"Please enter valid l5 left field."
                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                        a=0;
                                                                                                                                                                        
                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                       description:@"Please enter valid l5 right field."
                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                    }
                                                                                                                                                                }                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                    a=0;
                                                                                                                                                                    
                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                   description:@"Please enter valid l4 right field."
                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                }
                                                                                                                                                                
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                                a=0;
                                                                                                                                                                
                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                               description:@"Please enter valid l4 left field."
                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                            }
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            a=0;
                                                                                                                                                            
                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                           description:@"Please enter valid l3 right field."
                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                              callback:nil];
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        
                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                       description:@"Please enter valid l3 left field."
                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                          callback:nil];
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    
                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                   description:@"Please enter valid l2 right field."
                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                      callback:nil];
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                
                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                               description:@"Please enter valid l2 left field."
                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                  callback:nil];
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            
                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                           description:@"Please enter valid l1 right field."
                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                              callback:nil];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                       description:@"Please enter valid l1 left field."
                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                          callback:nil];
                                                                                                                                        
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                   description:@"Please enter valid medial right field."
                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                      callback:nil];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                
                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                               description:@"Please enter valid medial left field."
                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                  callback:nil];
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            
                                                                                                                            
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid lateral right field."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid lateral left field."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid drawer right field."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                
                                                                                                                
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid drawer left."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid thompson right field."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid thompson left field."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid long right field."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid long left field."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid achilles right c6-7 field."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid achilles left field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid tinel right field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid tinel left field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid greatflexion right field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid greatflexion left field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid great extension right field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid great extension left field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid eversion right field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid eversion left  field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid inversion right field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid inversion left field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid dorsiflexion right field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid dorsiflexion left field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                    }
                                    
                                }
                                
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid flexion right field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid flexion left field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid note  field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                        }
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid swelling field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                    }
                }
                
                
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid muscle field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
                
            }
            else
            {
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid date."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
            }
            
        }
        else
        {
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter patient name."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
        }
        
    }
    else
    {
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
    }
    if (a==1) {
        [self performSegueWithIdentifier:@"foot1" sender:self];
    }
    
    
    
}

- (IBAction)gait:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        gaitlabel=@"normal";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        gaitlabel=@"antalogic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        gaitlabel=@"shuffling";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        gaitlabel=@"limp";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        gaitlabel=@"stagger";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        gaitlabel=@"cane assisted";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        gaitlabel=@"wheelchair";
    }
    
    
    
    
    
}



- (IBAction)ao:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        aolabel=@"excellent";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        aolabel=@"good";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        aolabel=@"fair";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        aolabel=@"severe";
    }
    
    
}
- (IBAction)pronation:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        pronationlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        pronationlabel=@"Right";
    }
    
}
- (IBAction)supination:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        supinationlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        supinationlabel=@"Right";
    }
}
- (IBAction)forefoot:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        forefootlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        forefootlabel=@"Right";
    }
}
- (IBAction)varus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        varuslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        varuslabel=@"Right";
    }
}
- (IBAction)valgus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        valguslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        valguslabel=@"Right";
    }
}
- (IBAction)forefootvalgus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        forefootvalguslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        forefootvalguslabel=@"Right";
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
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    ////NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"foot1"])
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
    
    
    if ([segue.identifier isEqualToString:@"foot1"])
    {
        
        
        foot1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        //        //NSLog(@"recorddict in foot%@",recorddict);
        // destViewController.delegate=self;
        
    }
}

- (IBAction)reset:(id)sender
{
    gaitlabel=@"normal";
    aolabel=@"excellent";
    pronationlabel=@"null";
    supinationlabel=@"null";
    forefootlabel=@"null";
    notes.text=@"";
    varuslabel=@"null";
    valguslabel=@"null";
    forefootvalguslabel=@"null";
    patientname.text=@"";
    date.text=@"";
    palpation.selected=NO;
    rangeofmotion.selected=NO;
    orthotesting.selected=NO;
    neurological.selected=NO;
    [palpation setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [rangeofmotion setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [orthotesting setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [neurological setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    [gait setSelectedSegmentIndex:0];
    [ao setSelectedSegmentIndex:0];
    [pronation setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [supination setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [forefoot setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [forefootvalgus setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [valgus setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [varus setSelectedSegmentIndex:UISegmentedControlNoSegment];
    patientname.text =@"";
    flexionleft.text =@"";
    flexionright.text =@"";
    muscletf.text =@"";
    dorsiflexionleft.text =@"";
    dorsiflexionright.text =@"";
    inversionleft.text =@"";
    inversionright.text =@"";
    eversionleft.text =@"";
    eversionright.text =@"";
    greatextensionleft.text =@"";
    greatextensionright.text =@"";
    greatflexionleft.text =@"";
    greatflexionright.text =@"";
    tinelleft.text =@"";
    tinelright.text =@"";
    achillesleft.text =@"";
    achillesright.text =@"";
    longleft.text =@"";
    longright.text =@"";
    thompsonleft.text =@"";
    thompsonright.text =@"";
    drawerleft.text =@"";
    drawerright.text =@"";
    lateralleft.text =@"";
    lateralright.text =@"";
    medialleft.text =@"";
    medialright.text =@"";
    l1left.text =@"";
    l1right.text =@"";
    l2left.text =@"";
    l2right.text =@"";
    l3left.text =@"";
    l3right.text =@"";
    l4left.text =@"";
    l4right.text =@"";
    l5left.text =@"";
    l5right.text =@"";
    s1left.text =@"";
    s1right.text =@"";
    ml1left.text =@"";
    ml1right.text =@"";
    ml2left.text =@"";
    ml2right.text =@"";
    ml3left.text =@"";
    ml3right.text =@"";
    ml4left.text =@"";
    ml4right.text =@"";
    ml5left.text =@"";
    ml5right.text =@"";
    ms1left.text =@"";
    ms1right.text =@"";
    swellingtf.text =@"";
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    recorddict=[[NSMutableDictionary alloc]init];
    resultset=[[NSMutableDictionary alloc]init];
    gaitlabel=@"normal";
    aolabel=@"excellent";
    pronationlabel=@"null";
    supinationlabel=@"null";
    forefootlabel=@"null";
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    // Adding BarButton With Action Symbol
    barButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(performAction:)];
    [self.navigationItem setRightBarButtonItem:barButton animated:NO];
    
    // Adding small sub view to main View
    printView = [[UIView alloc]initWithFrame:CGRectMake(695, 60, 75, 75)];
    // Creating Button
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0, 0, 75, 75);
    [button setBackgroundImage:[UIImage imageNamed:@"print.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(printAction) forControlEvents:UIControlEventTouchUpInside];
    // adding button to small subview
    [printView addSubview:button];
    [self.view addSubview:printView];
    // default the subview was hidden
    printView.hidden = YES;
    self.picVisible = NO;
    
    varuslabel=@"null";
    valguslabel=@"null";
    forefootvalguslabel=@"null";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    patientname.text=username;
    [self Getdata];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
}
-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    ////NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"footexamuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   //NSLog(@"items1app %d",[items1App count]);
    //NSLog(@"items1app %@",items1App);
    if ([items1App count]>0)
    {
        
        for (id anUpdate in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate objectForKey:@"serviceresponse"];
            
            temp1 =[arrayList1 objectForKey:@"pname"];
            temp2 =[arrayList1 objectForKey:@"date"];
            temp3 =[arrayList1 objectForKey:@"gait"];
            temp4 =[arrayList1 objectForKey:@"muscle"];
            temp5 =[arrayList1 objectForKey:@"swelling"];
            temp6 =[arrayList1 objectForKey:@"ao"];
            temp7=[arrayList1 objectForKey:@"pronation"];
            temp8 =[arrayList1 objectForKey:@"suspination"];
            temp9=[arrayList1 objectForKey:@"calcaneus"];
            temp10 =[arrayList1 objectForKey:@"valgus"];
            temp11 =[arrayList1 objectForKey:@"forefoot"];
            temp12=[arrayList1 objectForKey:@"forefootvalgus"];
            temp13 =[arrayList1 objectForKey:@"dysfunction"];
            temp14 =[arrayList1 objectForKey:@"note"];
            temp15=[arrayList1 objectForKey:@"functional"];
            temp16=[arrayList1 objectForKey:@"orthopedic"];
            temp17=[arrayList1 objectForKey:@"plantarflexionleft"];
            temp18=[arrayList1 objectForKey:@"plantarflexionright"];
            temp19=[arrayList1 objectForKey:@"dorsiflexionleft"];
            temp20=[arrayList1 objectForKey:@"dorsiflexionright"];
            temp21 =[arrayList1 objectForKey:@"inversionleft"];
            temp22 =[arrayList1 objectForKey:@"inversionright"];
            temp23 =[arrayList1 objectForKey:@"eversionleft"];
            temp24 =[arrayList1 objectForKey:@"eversionright"];
            temp25 =[arrayList1 objectForKey:@"greattoextensionleft"];
            temp26=[arrayList1 objectForKey:@"greattoextensionright"];
            temp27 =[arrayList1 objectForKey:@"greattoflexionleft"];
            temp28 =[arrayList1 objectForKey:@"greattoflexionright"];
            temp29 =[arrayList1 objectForKey:@"tinelstapleft"];
            temp30 =[arrayList1 objectForKey:@"tinelstapright"];
            temp31 =[arrayList1 objectForKey:@"achillestapleft"];
            temp32 =[arrayList1 objectForKey:@"achillestapright"];
            temp33 =[arrayList1 objectForKey:@"longleft"];
            temp34 =[arrayList1 objectForKey:@"longright"];
            temp35 =[arrayList1 objectForKey:@"thompsonsleft"];
            temp36 =[arrayList1 objectForKey:@"thompsonsright"];
            [resultset setValue:[arrayList1 objectForKey:@"drawerleft"] forKey:@"drawerleft"];
            [resultset setValue:[arrayList1 objectForKey:@"drawerright"] forKey:@"drawerright"];
            [resultset setValue:[arrayList1 objectForKey:@"lateralleft"] forKey:@"lateralleft"];
            [resultset setValue:[arrayList1 objectForKey:@"lateralright"] forKey:@"lateralright"];
            [resultset setValue:[arrayList1 objectForKey:@"medialstabilityleft"] forKey:@"medialstabilityleft"];
            [resultset setValue:[arrayList1 objectForKey:@"medialstabilityright"] forKey:@"medialstabilityright"];
            [resultset setValue:[arrayList1 objectForKey:@"neurological"] forKey:@"neurological"];
            [resultset setValue:[arrayList1 objectForKey:@"inguinalarealeft"] forKey:@"inguinalarealeft"];
            [resultset setValue:[arrayList1 objectForKey:@"inguinalarearight"] forKey:@"inguinalarearight"];
            [resultset setValue:[arrayList1 objectForKey:@"antleft"] forKey:@"antleft"];
            [resultset setValue:[arrayList1 objectForKey:@"antright"] forKey:@"antright"];
            [resultset setValue:[arrayList1 objectForKey:@"kneeleft"] forKey:@"kneeleft"];
            [resultset setValue:[arrayList1 objectForKey:@"kneeright"] forKey:@"kneeright"];
            [resultset setValue:[arrayList1 objectForKey:@"medialleft"] forKey:@"medialleft"];
            [resultset setValue:[arrayList1 objectForKey:@"medialright"] forKey:@"medialright"];
            [resultset setValue:[arrayList1 objectForKey:@"latleft"] forKey:@"latleft"];
            [resultset setValue:[arrayList1 objectForKey:@"latright"] forKey:@"latright"];
            [resultset setValue:[arrayList1 objectForKey:@"plantarleft"] forKey:@"plantarleft"];
            [resultset setValue:[arrayList1 objectForKey:@"plantarright"] forKey:@"plantarright"];
            [resultset setValue:[arrayList1 objectForKey:@"iliopsoasfirstleft"] forKey:@"iliopsoasfirstleft"];
            [resultset setValue:[arrayList1 objectForKey:@"iliopsoasfirstright"] forKey:@"iliopsoasfirstright"];
            [resultset setValue:[arrayList1 objectForKey:@"iliopsoas1left"] forKey:@"iliopsoas1left"];
            [resultset setValue:[arrayList1 objectForKey:@"iliopsoas1right"] forKey:@"iliopsoas1right"];
            [resultset setValue:[arrayList1 objectForKey:@"kneeextensionleft"] forKey:@"kneeextensionleft"];
            [resultset setValue:[arrayList1 objectForKey:@"kneeextensionright"] forKey:@"kneeextensionright"];
            [resultset setValue:[arrayList1 objectForKey:@"kneeflexionleft"] forKey:@"kneeflexionleft"];
            [resultset setValue:[arrayList1 objectForKey:@"kneeflexionright"] forKey:@"kneeflexionright"];
            [resultset setValue:[arrayList1 objectForKey:@"dorsiflexionleft1"] forKey:@"dorsiflexionleft1"];
            [resultset setValue:[arrayList1 objectForKey:@"dorsiflexionright1"] forKey:@"dorsiflexionright1"];
            [resultset setValue:[arrayList1 objectForKey:@"pfleft"] forKey:@"pfleft"];
            [resultset setValue:[arrayList1 objectForKey:@"pfright"] forKey:@"pfright"];
            [resultset setValue:[arrayList1 objectForKey:@"patellarleft"] forKey:@"patellarleft"];
            [resultset setValue:[arrayList1 objectForKey:@"patellarright"] forKey:@"patellarright"];
            [resultset setValue:[arrayList1 objectForKey:@"hsleft"] forKey:@"hsleft"];
            [resultset setValue:[arrayList1 objectForKey:@"hsright"] forKey:@"hsright"];
            [resultset setValue:[arrayList1 objectForKey:@"achillesleft"] forKey:@"achillesleft"];
            [resultset setValue:[arrayList1 objectForKey:@"achillesright"] forKey:@"achillesright"];
            [resultset setValue:[arrayList1 objectForKey:@"walking"] forKey:@"walking"];
            [resultset setValue:[arrayList1 objectForKey:@"standing"] forKey:@"standing"];
            [resultset setValue:[arrayList1 objectForKey:@"stairs"] forKey:@"stairs"];
            [resultset setValue:[arrayList1 objectForKey:@"other"] forKey:@"other"];
            [resultset setValue:[arrayList1 objectForKey:@"otherdefict"] forKey:@"otherdefict"];
            [resultset setValue:[arrayList1 objectForKey:@"comments"] forKey:@"comments"];
            [resultset setValue:[arrayList1 objectForKey:@"patientstatus"] forKey:@"patientstatus"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis1"] forKey:@"diagnosis1"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis2"] forKey:@"diagnosis2"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis3"] forKey:@"diagnosis3"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis4"] forKey:@"diagnosis4"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis5"] forKey:@"diagnosis5"];
            [resultset setValue:[arrayList1 objectForKey:@"times"] forKey:@"times"];
            [resultset setValue:[arrayList1 objectForKey:@"weeks"] forKey:@"weeks"];
            [resultset setValue:[arrayList1 objectForKey:@"spinaldecompression"] forKey:@"spinaldecompression"];
            [resultset setValue:[arrayList1 objectForKey:@"chiropractic"] forKey:@"chiropractic"];
            [resultset setValue:[arrayList1 objectForKey:@"physicaltherapy"] forKey:@"physicaltherapy"];
            [resultset setValue:[arrayList1 objectForKey:@"bracing"] forKey:@"bracing"];
            [resultset setValue:[arrayList1 objectForKey:@"modalities"] forKey:@"modalities"];
            [resultset setValue:[arrayList1 objectForKey:@"supplementation"] forKey:@"supplementation"];
            [resultset setValue:[arrayList1 objectForKey:@"hep"] forKey:@"hep"];
            [resultset setValue:[arrayList1 objectForKey:@"radiographic"] forKey:@"radiographic"];
            [resultset setValue:[arrayList1 objectForKey:@"mri"] forKey:@"mri"];
            [resultset setValue:[arrayList1 objectForKey:@"scan"] forKey:@"scan"];
            [resultset setValue:[arrayList1 objectForKey:@"conduction"] forKey:@"conduction"];
            [resultset setValue:[arrayList1 objectForKey:@"emg"] forKey:@"emg"];
            [resultset setValue:[arrayList1 objectForKey:@"outsidereferral"] forKey:@"outsidereferral"];
            [resultset setValue:[arrayList1 objectForKey:@"dc"] forKey:@"dc"];
            [resultset setValue:[arrayList1 objectForKey:@"others"] forKey:@"others"];
            [resultset setValue:[arrayList1 objectForKey:@"othervalue"] forKey:@"othervalue"];
            [resultset setValue:[arrayList1 objectForKey:@"signature"] forKey:@"signature"];
            patientname.text=temp1;
            date.text=temp2;
            muscletf.text=temp4;
            swellingtf.text=temp5;
            flexionleft .text=temp17;
            flexionright.text=temp18;
            dorsiflexionleft.text=temp19;
            dorsiflexionright.text=temp20;
            inversionleft.text=temp21;
            inversionright.text=temp22;
            eversionleft.text=temp23;
            eversionright.text=temp24;
            greatextensionleft.text=temp25;
            greatextensionright.text=temp26;
            greatflexionleft.text=temp27;
            greatflexionright.text=temp28;
            tinelleft.text=temp29;
            tinelright.text=temp30;
            achillesleft.text=temp31;
            achillesright.text=temp32;
            longleft.text=temp33;
            longright.text=temp34;
            thompsonleft.text=temp35;
            thompsonright.text=temp36;
            notes.text=temp14;
            drawerleft.text=[resultset objectForKey:@"drawerleft"];
            drawerright.text=[resultset objectForKey:@"drawerright"];
            lateralleft.text= [resultset objectForKey:@"lateralleft"];
            lateralright.text=[resultset objectForKey:@"lateralright"];
            medialleft .text= [resultset objectForKey:@"medialstabilityleft"];
            medialright.text=[resultset objectForKey:@"medialstabilityright"];
            l1left.text =[resultset objectForKey:@"inguinalarealeft"];
            l1right.text =[resultset objectForKey:@"inguinalarearight"];
            l2left.text=[resultset objectForKey:@"antleft"];
            l2right.text =[resultset objectForKey:@"antright"];
            l3left.text =[resultset objectForKey:@"kneeleft"];
            l3right.text =[resultset objectForKey:@"kneeright"];
            l4left.text =[resultset objectForKey:@"medialleft"];
            l4right.text =[resultset objectForKey:@"medialright"];
            l5left.text =[resultset objectForKey:@"latleft"];
            l5right.text =[resultset objectForKey:@"latright"];
            s1left.text =[resultset objectForKey:@"plantarleft"];
            s1right.text =[resultset objectForKey:@"plantarright"];
            ml1left.text =[resultset objectForKey:@"iliopsoasfirstleft"];
            ml1right.text =[resultset objectForKey:@"iliopsoasfirstright"];
            ml2left.text =[resultset objectForKey:@"iliopsoas1left"];
            ml2right.text =[resultset objectForKey:@"iliopsoas1right"];
            ml3left.text =[resultset objectForKey:@"kneeextensionleft"];
            ml3right.text =[resultset objectForKey:@"kneeextensionright"];
            ml4left.text =[resultset objectForKey:@"kneeflexionleft"];
            ml4right.text =[resultset objectForKey:@"kneeflexionright"];
            ml5left.text =[resultset objectForKey:@"dorsiflexionleft1"];
            ml5right.text =[resultset objectForKey:@"dorsiflexionright1"];
            ms1left.text =[resultset objectForKey:@"pfleft"];
            ms1right.text =[resultset objectForKey:@"pfright"];
            
            if ([temp13 isEqualToString:@"All Soft Tissue Unremarkable"]) {
                palpation.selected=YES;
                [palpation setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                palpationlabel=@"All Soft Tissue Unremarkable";
                
            }
            else
            {
                palpation.selected=NO;
                [palpation setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                palpationlabel=@"null";
                
            }
            if ([temp15 isEqualToString:@"Unremarkable"]) {
                rangeofmotion.selected=YES;
                [rangeofmotion setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                rangeofmotionlabel=@"Unremarkable";
                
            }
            else
            {
                rangeofmotion.selected=NO;
                [rangeofmotion setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                rangeofmotionlabel=@"null";
            }
            if ([temp16 isEqualToString:@"Unremarkable"]) {
                orthotesting.selected=YES;
                [orthotesting setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                orthotestinglabel=@"Unremarkable";
            }
            else
            {
                orthotesting.selected=NO;
                [orthotesting setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                orthotestinglabel=@"null";
            }
            if ([[resultset objectForKey:@"neurological"] isEqualToString:@"Neurological Testing Unremarkable"]) {
                neurological.selected=YES;
                [neurological setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                neurologicallabel=@"Neurological Testing Unremarkable";
            }
            else
            {
                neurological.selected=NO;
                [neurological setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                neurologicallabel=@"null";
            }
            if ([temp7 isEqualToString:@"Left"] ) {
                [pronation setSelectedSegmentIndex:0];
                pronationlabel=@"Left";
            }
            else if ([temp7 isEqualToString:@"Right"] ) {
                [pronation setSelectedSegmentIndex:1];
                pronationlabel=@"Right";
            }
            else
            {
                [pronation setSelectedSegmentIndex:UISegmentedControlNoSegment];
                pronationlabel=@"null";
            }
            if ([temp8 isEqualToString:@"Left"] ) {
                [supination setSelectedSegmentIndex:0];
                supinationlabel=@"Left";
            }
            else if ([temp8 isEqualToString:@"Right"] ) {
                [supination setSelectedSegmentIndex:1];
                supinationlabel=@"Right";
            }
            else
            {
                [supination setSelectedSegmentIndex:UISegmentedControlNoSegment];
                supinationlabel=@"null";
            }
            
            if ([temp9 isEqualToString:@"Left"] ) {
                [varus setSelectedSegmentIndex:0];
                varuslabel=@"Left";
            }
            else if ([temp9 isEqualToString:@"Right"] ) {
                [varus setSelectedSegmentIndex:1];
                varuslabel=@"Right";
            }
            else
            {
                [varus setSelectedSegmentIndex:UISegmentedControlNoSegment];
                varuslabel=@"null";
            }
            if ([temp10 isEqualToString:@"Left"] ) {
                [valgus setSelectedSegmentIndex:0];
                valguslabel=@"Left";
            }
            else if ([temp10 isEqualToString:@"Right"] ) {
                [valgus setSelectedSegmentIndex:1];
                valguslabel=@"Right";
            }
            else
            {
                [valgus setSelectedSegmentIndex:UISegmentedControlNoSegment];
                valguslabel=@"null";
            }
            
            if ([temp11 isEqualToString:@"Left"] ) {
                [forefoot setSelectedSegmentIndex:0];
                forefootlabel=@"Left";
            }
            else if ([temp11 isEqualToString:@"Right"] ) {
                [forefoot setSelectedSegmentIndex:1];
                forefootlabel=@"Right";
            }
            else
            {
                [forefoot setSelectedSegmentIndex:UISegmentedControlNoSegment];
                forefootlabel=@"null";
            }
            if ([temp12 isEqualToString:@"Left"] ) {
                [forefootvalgus setSelectedSegmentIndex:0];
                forefootvalguslabel=@"Left";
            }
            else if ([temp12 isEqualToString:@"Right"] ) {
                [forefootvalgus setSelectedSegmentIndex:1];
                forefootvalguslabel=@"Right";
            }
            else
            {
                [forefootvalgus setSelectedSegmentIndex:UISegmentedControlNoSegment];
                forefootvalguslabel=@"null";
            }
            
            if ([temp6 isEqualToString:@"excellent"] ) {
                [ao setSelectedSegmentIndex:0];
                aolabel=@"excellent";
            }
            else if ([temp6 isEqualToString:@"good"] ) {
                [ao setSelectedSegmentIndex:1];
                aolabel=@"good";
            }
            else if ([temp6 isEqualToString:@"fair"] ) {
                [ao setSelectedSegmentIndex:2];
                aolabel=@"fair";
            }
            else if ([temp6 isEqualToString:@"severe"] ) {
                [ao setSelectedSegmentIndex:3];
                aolabel=@"severe";
            }
            
            if ([temp3 isEqualToString:@"normal"] ) {
                [gait setSelectedSegmentIndex:0];
                gaitlabel=@"normal";
            }
            else if ([temp3 isEqualToString:@"antalogic"] ) {
                [gait setSelectedSegmentIndex:1];
                gaitlabel=@"antalogic";
            }
            else if ([temp3 isEqualToString:@"shuffling"] ) {
                [gait setSelectedSegmentIndex:2];
                gaitlabel=@"shuffling";
            }
            else if ([temp3 isEqualToString:@"limp"] ) {
                [gait setSelectedSegmentIndex:3];
                gaitlabel=@"limp";
            }
            else if ([temp3 isEqualToString:@"stagger"] ) {
                [gait setSelectedSegmentIndex:4];
                gaitlabel=@"stagger";
            }
            else if ([temp3 isEqualToString:@"cane assisted"] ) {
                [gait setSelectedSegmentIndex:5];
                gaitlabel=@"cane assisted";
            }
            else if ([temp3 isEqualToString:@"wheelchair"] ) {
                [gait setSelectedSegmentIndex:6];
                gaitlabel=@"wheelchair";
            }
            
            
        }
    }
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Footexam.php?service=footexamselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //    //NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    [request setURL:url];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    //when we user https, we need to allow any HTTPS cerificates, so add the one line code,to tell teh NSURLRequest to accept any https certificate, i'm not sure //about the security aspects
    
    
    NSError *error;
    NSURLResponse *response;
    NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    NSString *data=[[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
    // //NSLog(@"data %@",data);
    
    return data;
    
}

-(void)dismissKeyboard
{
    printView.hidden = YES;
    [patientname resignFirstResponder];
    [flexionleft resignFirstResponder];
    [flexionright resignFirstResponder];
    [muscletf resignFirstResponder];
    [dorsiflexionleft resignFirstResponder];
    [dorsiflexionright resignFirstResponder];
    [inversionleft resignFirstResponder];
    [inversionright resignFirstResponder];
    [eversionleft resignFirstResponder];
    [eversionright resignFirstResponder];
    [greatextensionleft resignFirstResponder];
    [greatextensionright resignFirstResponder];
    [greatflexionleft resignFirstResponder];
    [greatflexionright resignFirstResponder];
    [tinelleft resignFirstResponder];
    [tinelright resignFirstResponder];
    [achillesleft resignFirstResponder];
    [achillesright resignFirstResponder];
    [longleft resignFirstResponder];
    [longright resignFirstResponder];
    [thompsonleft resignFirstResponder];
    [thompsonright resignFirstResponder];
    [drawerleft resignFirstResponder];
    [drawerright resignFirstResponder];
    [lateralleft resignFirstResponder];
    [lateralright resignFirstResponder];
    [medialleft resignFirstResponder];
    [medialright resignFirstResponder];
    [l1left resignFirstResponder];
    [l1right resignFirstResponder];
    [l2left resignFirstResponder];
    [l2right resignFirstResponder];
    [l3left resignFirstResponder];
    [l3right resignFirstResponder];
    [l4left resignFirstResponder];
    [l4right resignFirstResponder];
    [l5left resignFirstResponder];
    [l5right resignFirstResponder];
    [s1left resignFirstResponder];
    [s1right resignFirstResponder];
    [ml1left resignFirstResponder];
    [ml1right resignFirstResponder];
    [ml2left resignFirstResponder];
    [ml2right resignFirstResponder];
    [ml3left resignFirstResponder];
    [ml3right resignFirstResponder];
    [ml4left resignFirstResponder];
    [ml4right resignFirstResponder];
    [ml5left resignFirstResponder];
    [ml5right resignFirstResponder];
    [ms1left resignFirstResponder];
    [ms1right resignFirstResponder];
    [swellingtf resignFirstResponder];
    [notes resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillDisappear:(BOOL)animated
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        
        if ([self isPicVisible]) {
            UIPrintInteractionController *pc = [UIPrintInteractionController sharedPrintController];
            [pc dismissAnimated:animated];
            self.picVisible = NO;
            printView.hidden = YES;
        }
    }
    
}

- (void)printInteractionControllerDidPresentPrinterOptions:(UIPrintInteractionController *)printInteractionController {
    [printView setHidden:YES];
    self.picVisible = YES;
}

- (void)printInteractionControllerDidDismissPrinterOptions:(UIPrintInteractionController *)printInteractionController {
    self.picVisible = NO;
}

-(void)performAction:(id)sender
{
    printView.hidden = NO;
}

- (void)printAction
{
    UIGraphicsBeginImageContext(self.view.frame.size);
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
    NSData *imageData = UIImagePNGRepresentation(viewImage);
    [self printItem:imageData];
}
#pragma mark - Printing

-(void)printItem :(NSData*)data {
    UIPrintInteractionController *printController = [UIPrintInteractionController sharedPrintController];
    if(printController && [UIPrintInteractionController canPrintData:data]) {
        printController.delegate = self;
        UIPrintInfo *printInfo = [UIPrintInfo printInfo];
        printInfo.outputType = UIPrintInfoOutputGeneral;
        printInfo.jobName = [NSString stringWithFormat:@""];
        printInfo.duplex = UIPrintInfoDuplexLongEdge;
        printController.printInfo = printInfo;
        printController.showsPageRange = YES;
        printController.printingItem = data;
        
        
        
        void (^completionHandler)(UIPrintInteractionController *, BOOL, NSError *) = ^(UIPrintInteractionController *printController, BOOL completed, NSError *error) {
            if (!completed && error) {
                ////NSLog(@"FAILED! due to error in domain %@ with error code %u", error.domain, error.code);
            }
        };
        [printController presentFromBarButtonItem:barButton animated:YES completionHandler:completionHandler];
    }
}



- (void)dealloc {
    
    
    [super dealloc];
}
@end
