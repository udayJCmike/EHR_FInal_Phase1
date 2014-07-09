//
//  dcfee4ViewController.m
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "dcfee4ViewController.h"
#import "dcfee1ViewController.h"
#import "dcfee2ViewController.h"
#import "dcfee3ViewController.h"
#import "dcfeeViewController.h"


#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"


#import "TWMessageBarManager.h"
#import "StringConstants.h"

@interface dcfee4ViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}

@end

@implementation dcfee4ViewController
@synthesize cardholderlab;
@synthesize seggy;
@synthesize check1;
@synthesize check2;
@synthesize check3;
@synthesize check4;
@synthesize checkbut1;
@synthesize checkbut2;
@synthesize checkbut3;
@synthesize checkbut4;
@synthesize chargelabtext;
@synthesize cardownersig;

@synthesize resultset;


@synthesize pillow;
@synthesize lumbarsupport;
@synthesize orthoticleft;
@synthesize orthoticright;
@synthesize tensunit;
@synthesize coldpack;
@synthesize wristsplint;
@synthesize heellift;
@synthesize exerciseball;
@synthesize exerciseband;
@synthesize unlisteditem;
@synthesize charges;
@synthesize less;
@synthesize balance;
@synthesize amt;
@synthesize date;
@synthesize patientsign;
@synthesize drsign;
@synthesize reshedule;
@synthesize months;
@synthesize recorddict;
@synthesize chargeslabel;
@synthesize balancelabel;


@synthesize save;
@synthesize cancel;
@synthesize cancel1;
@synthesize reset;
@synthesize reset1;
@synthesize update;
@synthesize deletefuc;


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



NSString *seggyval;


NSString *_1,*_2,*_3,*_4,*_5,*_6,*_7;
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)back:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	//NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	//NSLog(@"begin editing");
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField.tag==2) {
        NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        //        //NSLog(@"VALUES %@%@",chargeslabel.text,newString);
        //        //NSLog(@"VALUES %D %D",[chargeslabel.text intValue],[newString intValue]);
        int res= [chargeslabel.text intValue]-[newString intValue];
        balancelabel.text=[NSString stringWithFormat:@"%d",res];
        return YES;
        
        
    }
    else
        return YES;
    
}
- (IBAction)save:(id)sender {
    du=[[databaseurl alloc]init];
    
    
    if(checkbut1.selected){
        [recorddict setValue:@"Amex" forKey:@"amex"];
        
    }
    else{
        [recorddict setValue:@"null" forKey:@"amex"];
        
        
    }
    if(checkbut2.selected){
        [recorddict setValue:@"discover" forKey:@"discover"];
        
    }
    else{
        [recorddict setValue:@"null" forKey:@"discover"];
        
        
    }
    
    if(checkbut3.selected){
        [recorddict setValue:@"MC" forKey:@"mc"];
        
    }
    else{
        [recorddict setValue:@"null" forKey:@"mc"];
        
        
    }
    
    if(checkbut4.selected){
        [recorddict setValue:@"Visa" forKey:@"visa"];
        
    }
    else{
        [recorddict setValue:@"null" forKey:@"visa"];
        
        
    }
    
    if(seggy.selectedSegmentIndex==1){
        
        [recorddict setValue:cardownersig.text forKey:@"cardsign"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"cardsign"];
    }
    
    [recorddict setValue:seggyval forKey:@"payment"];
    
    temp1 =[pillow.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[lumbarsupport.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[orthoticleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[orthoticright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5=[tensunit.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[coldpack.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[wristsplint.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[heellift.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[exerciseball.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[exerciseband.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[unlisteditem.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[charges.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[less.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[balance.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[amt.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[patientsign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[drsign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[reshedule.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[months.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[cardownersig.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(([date.text length]!=0)&&
       ([patientsign.text length]!=0)&&
       ([drsign.text length]!=0))
        
    {
        c=0;
        
        if ([du patname:temp17]==1)
        {
            if ([du patname:temp18]==1)
            {
                if ([self validateDate:temp16]==1)
                {
                    if((([temp1 length]>0)&&([du date:temp1]==1))||([temp1 length]==0))
                    {
                        if((([temp2 length]>0)&&([du date:temp2]==1))||([temp2 length]==0))
                        {
                            if((([temp3 length]>0)&&([du date:temp3]==1))||([temp3 length]==0))
                            {
                                if((([temp4 length]>0)&&([du date:temp4]==1))||([temp4 length]==0))
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
                                                                if(([temp12 length]>0)||([temp12 length]==0))
                                                                {
                                                                    if((([temp13 length]>0)&&([du date:temp13]==1))||([temp13 length]==0))
                                                                    {
                                                                        if(([temp14 length]>0)||([temp14 length]==0))
                                                                        {
                                                                            if(([temp15 length]>0)||([temp15 length]==0))
                                                                                
                                                                            {
                                                                                
                                                                                
                                                                                if((([temp19 length]>0)&&([du date:temp19]==1))||([temp19 length]==0))
                                                                                    
                                                                                {
                                                                                    
                                                                                    if((([temp20 length]>0)&&([du date:temp20]==1))||([temp20 length]==0))
                                                                                        
                                                                                    {
                                                                                        NSString *page1=[recorddict objectForKey:@"calc1"];
                                                                                        calc1=[page1 floatValue];
                                                                                        NSString *page2=[recorddict objectForKey:@"calc2"];
                                                                                        calc2=[page2 floatValue];
                                                                                        NSString *page3=[recorddict objectForKey:@"calc3"];
                                                                                        calc3=[page3 floatValue];
                                                                                        NSString *page4=[recorddict objectForKey:@"calc4"];
                                                                                        calc4=[page4 floatValue];
                                                                                        a=([pillow .text floatValue]+[lumbarsupport.text floatValue]+[tensunit.text floatValue]+[coldpack.text floatValue]+[wristsplint.text floatValue]+[exerciseball.text floatValue]+[exerciseband.text floatValue]+[unlisteditem.text floatValue]+[orthoticleft.text floatValue]+[orthoticright.text floatValue]+[heellift.text floatValue]+(calc1)+(calc2)+(calc3)+(calc4));
                                                                                        
                                                                                        
                                                                                        
                                                                                        charges.text=[[NSString alloc] initWithFormat:@"%.2f",a];
                                                                                        chargeslabel.text=charges.text;
                                                                                        b=([less.text floatValue]);
                                                                                        d=([charges.text floatValue]-[less.text floatValue]);
                                                                                        balance.text=[[NSString alloc] initWithFormat:@"%.2f",d];
                                                                                        amt.text=[[NSString alloc] initWithFormat:@"%.2f",d];
                                                                                        balancelabel.text=balance.text;
                                                                                        
                                                                                        [recorddict setValue:pillow.text forKey:@"pillow"];
                                                                                        [recorddict setValue:lumbarsupport.text forKey:@"lumbarsupport"];
                                                                                        [recorddict setValue:orthoticleft.text forKey:@"orthoticleft"];
                                                                                        [recorddict setValue:orthoticright.text forKey:@"orthoticright"];
                                                                                        [recorddict setValue:tensunit.text forKey:@"tensunit"];
                                                                                        [recorddict setValue:coldpack.text forKey:@"coldpack"];
                                                                                        [recorddict setValue:wristsplint.text forKey:@"wristsplint"];
                                                                                        [recorddict setValue:heellift.text forKey:@"heellift"];
                                                                                        [recorddict setValue:exerciseball.text forKey:@"exerciseball"];
                                                                                        [recorddict setValue:exerciseband.text forKey:@"exerciseband"];
                                                                                        [recorddict setValue:unlisteditem.text forKey:@"unlisteditem"];
                                                                                        [recorddict setValue:charges.text forKey:@"charges"];
                                                                                        
                                                                                        [recorddict setValue:less.text forKey:@"less"];
                                                                                        [recorddict setValue:balance.text forKey:@"balance"];
                                                                                        [recorddict setValue:date.text forKey:@"date"];
                                                                                        [recorddict setValue:patientsign.text forKey:@"patientsign"];
                                                                                        
                                                                                        [recorddict setValue:drsign.text forKey:@"drsign"];
                                                                                        [recorddict setValue:reshedule.text forKey:@"reshedule"];
                                                                                        [recorddict setValue:months.text forKey:@"months"];
                                                                                        [recorddict setValue:amt.text forKey:@"amt"];
                                                                                        //NSLog(@"success!!!recorddict final %@",recorddict);
                                                                                        //NSLog(@"success!!!recorddict final %d",[recorddict count]);
                                                                                        
                                                                                        c=1;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        c=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid month."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid week."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid amount."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid balance."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid less."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid charges."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid routine unlisted item."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid exercise band."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid exercise ball."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    c=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid heel lift."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid wrist splint."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid cold pack."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                        }
                                        
                                        
                                        
                                    }
                                    
                                    else
                                    {
                                        c=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid tens unit."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    c=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid orthotic custom right."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                }
                            }
                            
                            
                            else
                            {
                                c=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid orthotic custom left."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                        }
                        else
                        {
                            c=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid  lumbar support."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                        }
                    }
                    
                    else
                    {
                        c=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid cervical pillow."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                    }
                    
                }
                
                else
                {
                    c=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid date."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
                
            }
            
            else
            {
                c=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid sign."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
            }
        }
        
        else
        {
            c=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid parent sign."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
        }
    }
    else
    {
        c=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
    }
    if(c==1)
    {
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==11)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            //        [self updatedata];
            if ([[self submitvalues]isEqualToString:@"success"])
            {
                [self insertdata];
            }
            
            
        }
        else  if(buton.tag==12)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            //                  [self insertdata];
            if ([[self submitvalues]isEqualToString:@"success"]) {
                [self updatedata];
                
            }
            
            
            
        }
        
        
    }
}


-(NSString*)submitvalues
{
    
    
    Reachability* wifiReach = [[Reachability reachabilityWithHostName: @"www.apple.com"] retain];
	NetworkStatus netStatus = [wifiReach currentReachabilityStatus];
    
	switch (netStatus)
	{
		case NotReachable:
		{
			isConnect=NO;
			////NSLog(@"Access Not Available");
			break;
		}
            
		case ReachableViaWWAN:
		{
			isConnect=YES;
			////NSLog(@"Reachable WWAN");
			break;
		}
		case ReachableViaWiFi:
		{
			isConnect=YES;
			////NSLog(@"Reachable WiFi");
			break;
		}
	}
	
	
    
    if(isConnect)
    {
        NSString *result=@"success";
        return result;
        
    }
    //  imgName=@"Connected.png";
    else
    {
        HUD.labelText = @"Check network connection";
        HUD.customView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]] autorelease];
        HUD.mode = MBProgressHUDModeCustomView;
        [HUD hide:YES afterDelay:1];
        return @"failure";
    }
    
    
}
-(void)insertdata
{
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    ////NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        ////NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"dcfeeslip Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                
                
                
                [self performSegueWithIdentifier:@"dctowelcome" sender:self];
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                [self performSegueWithIdentifier:@"dctowelcome" sender:self];
                
            }
        }
    }
    
}


-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"DCFeeSlip.php?service=dcfeeslipinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pid=%@&date=%@&pname=%@&dr1=%@&rpt=%@&pta=%@&initialemlimited=%@&initialexpanded=%@&initialdetailed=%@&initialemextended=%@&estpatientltd=%@&estpatientexp=%@&estpatientdetails=%@&estpatientcomp=%@&consultphys=%@&consultdetail=%@&consultcomp=%@&patientexp=%@&patientdetails=%@&patientcomp=%@&telephonebrief=%@&telephoneintermediate=%@&telephonecomp=%@&tractionmechanical=%@&electricstim=%@&vasopneumatic=%@&paraffin=%@&whirlpool=%@&diathermy=%@&infrared=%@&ultraviolet=%@&microwave=%@&manualelectricalstim=%@&iontophoresis=%@&contrastbaths=%@&ultrasound=%@&unlisted=%@&therapeutic=%@&neuromuscular=%@&aquatic=%@&gaittraining=%@&massage=%@&manualtherapy=%@&unlistedother=%@&orthotics=%@&kinetic=%@&adlselfcare=%@&grouptherapy=%@&reintegration=%@&acupuncturewo=%@&acupuncturew=%@&spine12=%@&spine34=%@&spine5=%@&extremity=%@&muscle=%@&routine=%@&musclehand=%@&rangeofmotion=%@&rangeofmotionhand=%@&ncv=%@&ncvw=%@&ncvea=%@&sseplower=%@&ssepupper=%@&ssephead=%@&hreflex=%@&physicalperformance=%@&functionalcapacity=%@&text1=%@&text2=%@&supplies=%@&patienteducation=%@&medicaltestimony=%@&insuranceform=%@&teamconference=%@&completespine=%@&cervical23=%@&cervical4=%@&cervical67=%@&thoracic4=%@&thoracic2=%@&scoliosis=%@&lumbosacral=%@&lumbosacral4=%@&pelvis2=%@&lumbarcomplete=%@&elbow2=%@&wrist2=%@&hand2=%@&knee2=%@&ankle2=%@&foot2=%@&readotherfilms=%@&cervicalpillow=%@&lumbarsupport=%@&orthoticcustoml=%@&orthoticcustomr=%@&tensunit=%@&coldpack=%@&wristsplint=%@&heellift=%@&exerciseball=%@&exerciseband=%@&unlisteditem=%@&charges=%@&less=%@&balance=%@&payment=%@&paymentcashcheck=%@&amex=%@&discover=%@&mc=%@&visa=%@&cardsign=%@&date1=%@&parentsign=%@&doctorsign=%@&week=%@&months=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientid"],[recorddict objectForKey:@"datefirst"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"physicianname"],[recorddict objectForKey:@"RPT"],[recorddict objectForKey:@"PTA"],[recorddict objectForKey:@"Limited"],[recorddict objectForKey:@"Expanded"],[recorddict objectForKey:@"Detailed"],[recorddict objectForKey:@"Extended"],[recorddict objectForKey:@"Ltd"],[recorddict objectForKey:@"Exp"],[recorddict objectForKey:@"Detail"],[recorddict objectForKey:@"comp"],[recorddict objectForKey:@"refexp"],[recorddict objectForKey:@"refdetail"],[recorddict objectForKey:@"refcomp"],[recorddict objectForKey:@"consultexp"],[recorddict objectForKey:@"consultdetail"],[recorddict objectForKey:@"consultcomp"],[recorddict objectForKey:@"brief"],[recorddict objectForKey:@"intermediate"],[recorddict objectForKey:@"consultationcomp"],[recorddict objectForKey:@"mechanical"],[recorddict objectForKey:@"unattended"],[recorddict objectForKey:@"device"],[recorddict objectForKey:@"bath"],[recorddict objectForKey:@"hydrotheraphy"],[recorddict objectForKey:@"diathermy"],[recorddict objectForKey:@"infrared"],[recorddict objectForKey:@"ultraviolet"],[recorddict objectForKey:@"microwave"],[recorddict objectForKey:@"stim"],[recorddict objectForKey:@"iontophoresis"],[recorddict objectForKey:@"contrastbaths"],[recorddict objectForKey:@"ultrasound"],[recorddict objectForKey:@"unlisted"],[recorddict objectForKey:@"exersice"],[recorddict objectForKey:@"re"],[recorddict objectForKey:@"theraphy"],[recorddict objectForKey:@"gait"],[recorddict objectForKey:@"massage"],[recorddict objectForKey:@"manualtheraphy"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"fitting"],[recorddict objectForKey:@"activities"],[recorddict objectForKey:@"selfcare"],[recorddict objectForKey:@"grouptheraphy"],[recorddict objectForKey:@"training"],[recorddict objectForKey:@"wostimulation"],[recorddict objectForKey:@"wstimulation"],[recorddict objectForKey:@"regions1"],[recorddict objectForKey:@"regions2"],[recorddict objectForKey:@"regions3"],[recorddict objectForKey:@"extremity"],[recorddict objectForKey:@"urinalysis"],[recorddict objectForKey:@"muscletest"],[recorddict objectForKey:@"muscletesthand"],[recorddict objectForKey:@"rangeofmotion"],[recorddict objectForKey:@"rangeofmotionhand"],[recorddict objectForKey:@"wofave"],[recorddict objectForKey:@"wfwave"],[recorddict objectForKey:@"sensory"],[recorddict objectForKey:@"upper"],[recorddict objectForKey:@"lower"],[recorddict objectForKey:@"trunk"],[recorddict objectForKey:@"rl"],[recorddict objectForKey:@"test"],[recorddict objectForKey:@"evaluation"],[recorddict objectForKey:@"text1"],[recorddict objectForKey:@"text2"],[recorddict objectForKey:@"supplies"],[recorddict objectForKey:@"materials"],[recorddict objectForKey:@"testimony"],[recorddict objectForKey:@"insurance"],[recorddict objectForKey:@"conference"],[recorddict objectForKey:@"spine"],[recorddict objectForKey:@"cervicalview1"],[recorddict objectForKey:@"cervicalview2"],[recorddict objectForKey:@"cervicalview3"],[recorddict objectForKey:@"thoracic"],[recorddict objectForKey:@"thoracicview"],[recorddict objectForKey:@"scoliosis"],[recorddict objectForKey:@"lumbview1"],[recorddict objectForKey:@"lumbview2"],[recorddict objectForKey:@"pelvis"],[recorddict objectForKey:@"lumbar"],[recorddict objectForKey:@"elbow"],[recorddict objectForKey:@"wrist"],[recorddict objectForKey:@"hand"],[recorddict objectForKey:@"knee"],[recorddict objectForKey:@"ankle"],[recorddict objectForKey:@"foot"],[recorddict objectForKey:@"readother"],[recorddict objectForKey:@"pillow"],[recorddict objectForKey:@"lumbarsupport"],[recorddict objectForKey:@"orthoticleft"],[recorddict objectForKey:@"orthoticright"],[recorddict objectForKey:@"tensunit"],[recorddict objectForKey:@"coldpack"],[recorddict objectForKey:@"wristsplint"],[recorddict objectForKey:@"heellift"],[recorddict objectForKey:@"exerciseball"],[recorddict objectForKey:@"exerciseband"],[recorddict objectForKey:@"unlisteditem"],[recorddict objectForKey:@"charges"],[recorddict objectForKey:@"less"],[recorddict objectForKey:@"balance"],[recorddict objectForKey:@"payment"],[recorddict objectForKey:@"amt"],[recorddict objectForKey:@"amex"],[recorddict objectForKey:@"discover"],[recorddict objectForKey:@"mc"],[recorddict objectForKey:@"visa"],[recorddict objectForKey:@"cardsign"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"patientsign"],[recorddict objectForKey:@"drsign"],[recorddict objectForKey:@"reshedule"],[recorddict objectForKey:@"months"],secondEntity,value2];
    //NSLog(@"POST:%@",post);
    
    
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
    //NSLog(@"data %@",data);
    
    return data;
    
}



- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];}

- (IBAction)deletefuc:(id)sender {
    HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.delegate = self;
    HUD.labelText = @"Deleting";
    [HUD show:YES];
    //        [self updatedata];
    if ([[self submitvalues]isEqualToString:@"success"])
    {
        NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
        NSString *response=[self HttpPostEntityFirst1delete:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
        NSError *error;
        SBJSON *json = [[SBJSON new] autorelease];
        NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
        
        ////NSLog(@"%@ lucky numbers",luckyNumbers);
        if (luckyNumbers == nil)
        {
            
            ////NSLog(@"luckyNumbers == nil");
            
        }
        else
        {
            
            NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
            // //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"dcfeeslip Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    
                    
                    
                    [self performSegueWithIdentifier:@"dctowelcome" sender:self];
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    [self performSegueWithIdentifier:@"dctowelcome" sender:self];
                    
                }
            }
        }
        
    }
}

- (IBAction)reset:(id)sender {
    
    
    pillow.text=@"";
    lumbarsupport.text=@"";
    orthoticleft.text=@"";
    orthoticright.text=@"";
    tensunit.text=@"";
    coldpack.text=@"";
    wristsplint.text=@"";
    heellift.text=@"";
    exerciseball.text=@"";
    exerciseband.text=@"";
    unlisteditem.text=@"";
    charges.text=@"0";
    less.text=@"";
    balance.text=@"0.00";
    amt.text=@"";
    date.text=@"";
    patientsign.text=@"";
    drsign.text=@"";
    reshedule.text=@"";
    months.text=@"";
    balancelabel.text=@"0.00";
    chargeslabel.text=@"0.00";
    checkbut1.selected=NO;
    checkbut2.selected=NO;
    checkbut3.selected=NO;
    checkbut4.selected=NO;
    [checkbut1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    chargelabtext.hidden=YES;
    checkbut1.hidden=YES;
    checkbut2.hidden=YES;
    checkbut3.hidden=YES;
    checkbut4.hidden=YES;
    check1.hidden=YES;
    check2.hidden=YES;
    check3.hidden=YES;
    check4.hidden=YES;
    cardholderlab.hidden=YES;
    cardownersig.hidden=YES;
    seggyval=@"Cash";
    cardownersig.text=@"";
    chargelabtext.text=@"";
    [seggy setSelectedSegmentIndex:0];
}




- (IBAction)calculate:(id)sender {
    
    //    //NSLog(@"dcfee4%@",recorddict);
    NSString *page1=[recorddict objectForKey:@"calc1"];
    calc1=[page1 floatValue];
    NSString *page2=[recorddict objectForKey:@"calc2"];
    calc2=[page2 floatValue];
    NSString *page3=[recorddict objectForKey:@"calc3"];
    calc3=[page3 floatValue];
    NSString *page4=[recorddict objectForKey:@"calc4"];
    calc4=[page4 floatValue];
    
    a=([pillow .text floatValue]+[lumbarsupport.text floatValue]+[tensunit.text floatValue]+[coldpack.text floatValue]+[wristsplint.text floatValue]+[exerciseball.text floatValue]+[exerciseband.text floatValue]+[unlisteditem.text floatValue]+[orthoticleft.text floatValue]+[orthoticright.text floatValue]+[heellift.text floatValue]+(calc1)+(calc2)+(calc3)+(calc4));
    
    
    
    charges.text=[[NSString alloc] initWithFormat:@"%.2f",a];
    chargeslabel.text=charges.text;
    b=([less.text floatValue]);
    d=([charges.text floatValue]-[less.text floatValue]);
    balance.text=[[NSString alloc] initWithFormat:@"%.2f",d];
    amt.text=[[NSString alloc] initWithFormat:@"%.2f",d];
    balancelabel.text=balance.text;
    
    
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)checkboxSelected:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(cash.selected)
    {
        check.hidden=NO;
        cash.hidden=NO;
    }
    else
    {
        
        
    }
    
    
}
-(void)dismissKeyboard{
      printView.hidden = YES;
    [pillow resignFirstResponder];
    [lumbarsupport resignFirstResponder];
    [orthoticleft resignFirstResponder];
    [orthoticright resignFirstResponder];
    [tensunit resignFirstResponder];
    [coldpack resignFirstResponder];
    [wristsplint resignFirstResponder];
    [heellift resignFirstResponder];
    [exerciseball resignFirstResponder];
    [exerciseband resignFirstResponder];
    [unlisteditem resignFirstResponder];
    [charges resignFirstResponder];
    [less resignFirstResponder];
    [balance resignFirstResponder];
    [amt resignFirstResponder];
    [date resignFirstResponder];
    [patientsign resignFirstResponder];
    [drsign resignFirstResponder];
    [reshedule resignFirstResponder];
    [months resignFirstResponder];
    [cardownersig resignFirstResponder];
    
    
}
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
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
    

    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    update.hidden=YES;
    deletefuc.hidden=YES;
    cancel1.hidden=YES;
    reset1.hidden=YES;
    
    seggyval=@"Cash";
    chargelabtext.hidden=YES;
    checkbut1.hidden=YES;
    checkbut2.hidden=YES;
    checkbut3.hidden=YES;
    checkbut4.hidden=YES;
    check1.hidden=YES;
    check2.hidden=YES;
    check3.hidden=YES;
    check4.hidden=YES;
    cardholderlab.hidden=YES;
    cardownersig.hidden=YES;
    less.delegate=self;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    if ([resultset count]>0)
    {
        update.hidden=NO;
        deletefuc.hidden=NO;
        reset1.hidden=NO;
        cancel1.hidden=NO;
        save.hidden=YES;
        reset.hidden=YES;
        cancel.hidden=YES;
        [self displaydata];
    }
    
    // recorddict=[[NSMutableDictionary alloc]init];
    
    
    
	// Do any additional setup after loading the view.
}
-(void)displaydata{
    
    if([resultset count]>0)
    {
        pillow.text=[resultset objectForKey:@"cervicalpillow"];
        lumbarsupport.text=[resultset objectForKey:@"lumbarsupport"];
        orthoticleft.text=[resultset objectForKey:@"orthoticcustoml"];
        orthoticright.text=[resultset objectForKey:@"orthoticcustomr"];
        tensunit.text=[resultset objectForKey:@"tensunit"];
        coldpack.text=[resultset objectForKey:@"coldpack"];
        wristsplint.text=[resultset objectForKey:@"wristsplint"];
        heellift.text=[resultset objectForKey:@"heellift"];
        exerciseball.text=[resultset objectForKey:@"exerciseball"];
        exerciseband.text=[resultset objectForKey:@"exerciseband"];
        unlisteditem.text=[resultset objectForKey:@"unlisteditem"];
        chargeslabel.text=[resultset objectForKey:@"charges"];
        less.text=[resultset objectForKey:@"less"];
        balancelabel.text=[resultset objectForKey:@"balance"];
        amt.text=[resultset objectForKey:@"paymentcashcheck"];
        date.text=[resultset objectForKey:@"date1"];
        patientsign.text=[resultset objectForKey:@"parentsign"];
        drsign.text=[resultset objectForKey:@"doctorsign"];
        reshedule.text=[resultset objectForKey:@"week"];
        months.text=[resultset objectForKey:@"months"];
        _1=[resultset objectForKey:@"payment"];
        if([_1 isEqualToString:@"Cash"]){
            
            [seggy setSelectedSegmentIndex:0];
            seggyval=@"Cash";
            
        }
        else if([_1 isEqualToString:@"Cheque"]){
            [seggy setSelectedSegmentIndex:1];
            chargelabtext.hidden=NO;
            checkbut1.hidden=NO;
            checkbut2.hidden=NO;
            checkbut3.hidden=NO;
            checkbut4.hidden=NO;
            check1.hidden=NO;
            check2.hidden=NO;
            check3.hidden=NO;
            check4.hidden=NO;
            cardholderlab.hidden=NO;
            cardownersig.hidden=NO;
            seggyval=@"Cheque";
            
            
        }
        _2=[resultset objectForKey:@"amex"];
        
        if([_2 isEqualToString:@"null"]){
            
            [checkbut1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            
        }
        else{
            [checkbut1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        }
        
        _3=[resultset objectForKey:@"discover"];
        
        if([_3 isEqualToString:@"null"]){
            
            [checkbut2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            
        }
        else{
            [checkbut2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        }
        _4=[resultset objectForKey:@"mc"];
        
        if([_4 isEqualToString:@"null"]){
            
            [checkbut3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            
        }
        else{
            [checkbut3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        }
        _5=[resultset objectForKey:@"visa"];
        
        if([_5 isEqualToString:@"null"]){
            
            [checkbut4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            
        }
        else{
            [checkbut4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        }
        cardownersig.text=[resultset objectForKey:@"cardsign"];
        
        
        
        if([pillow.text isEqualToString:@"0"]){
            
            pillow.text=@"";
        }
        if([lumbarsupport.text isEqualToString:@"0"]){
            
            lumbarsupport.text=@"";
        }
        if([orthoticleft.text isEqualToString:@"0"]){
            
            orthoticleft.text=@"";
        }
        if([orthoticright.text isEqualToString:@"0"]){
            
            orthoticright.text=@"";
        }
        if([tensunit.text isEqualToString:@"0"]){
            
            tensunit.text=@"";
        }
        if([coldpack.text isEqualToString:@"0"]){
            
            coldpack.text=@"";
        }
        if([wristsplint.text isEqualToString:@"0"]){
            
            wristsplint.text=@"";
        }
        if([heellift.text isEqualToString:@"0"]){
            
            heellift.text=@"";
        }
        if([exerciseball.text isEqualToString:@"0"]){
            
            exerciseball.text=@"";
        }
        if([exerciseband.text isEqualToString:@"0"]){
            
            exerciseband.text=@"";
        }
        if([unlisteditem.text isEqualToString:@"0"]){
            
            unlisteditem.text=@"";
        }
        if([less.text isEqualToString:@"0"]){
            
            less.text=@"";
        }
        
        
        
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"DCFeeSlip.php?service=dcfeeslipedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    //    //NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pid=%@&date=%@&pname=%@&dr1=%@&rpt=%@&pta=%@&initialemlimited=%@&initialexpanded=%@&initialdetailed=%@&initialemextended=%@&estpatientltd=%@&estpatientexp=%@&estpatientdetails=%@&estpatientcomp=%@&consultphys=%@&consultdetail=%@&consultcomp=%@&patientexp=%@&patientdetails=%@&patientcomp=%@&telephonebrief=%@&telephoneintermediate=%@&telephonecomp=%@&tractionmechanical=%@&electricstim=%@&vasopneumatic=%@&paraffin=%@&whirlpool=%@&diathermy=%@&infrared=%@&ultraviolet=%@&microwave=%@&manualelectricalstim=%@&iontophoresis=%@&contrastbaths=%@&ultrasound=%@&unlisted=%@&therapeutic=%@&neuromuscular=%@&aquatic=%@&gaittraining=%@&massage=%@&manualtherapy=%@&unlistedother=%@&orthotics=%@&kinetic=%@&adlselfcare=%@&grouptherapy=%@&reintegration=%@&acupuncturewo=%@&acupuncturew=%@&spine12=%@&spine34=%@&spine5=%@&extremity=%@&muscle=%@&routine=%@&musclehand=%@&rangeofmotion=%@&rangeofmotionhand=%@&ncv=%@&ncvw=%@&ncvea=%@&sseplower=%@&ssepupper=%@&ssephead=%@&hreflex=%@&physicalperformance=%@&functionalcapacity=%@&text1=%@&text2=%@&supplies=%@&patienteducation=%@&medicaltestimony=%@&insuranceform=%@&teamconference=%@&completespine=%@&cervical23=%@&cervical4=%@&cervical67=%@&thoracic4=%@&thoracic2=%@&scoliosis=%@&lumbosacral=%@&lumbosacral4=%@&pelvis2=%@&lumbarcomplete=%@&elbow2=%@&wrist2=%@&hand2=%@&knee2=%@&ankle2=%@&foot2=%@&readotherfilms=%@&cervicalpillow=%@&lumbarsupport=%@&orthoticcustoml=%@&orthoticcustomr=%@&tensunit=%@&coldpack=%@&wristsplint=%@&heellift=%@&exerciseball=%@&exerciseband=%@&unlisteditem=%@&charges=%@&less=%@&balance=%@&payment=%@&paymentcashcheck=%@&amex=%@&discover=%@&mc=%@&visa=%@&cardsign=%@&date1=%@&parentsign=%@&doctorsign=%@&week=%@&months=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientid"],[recorddict objectForKey:@"datefirst"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"physicianname"],[recorddict objectForKey:@"RPT"],[recorddict objectForKey:@"PTA"],[recorddict objectForKey:@"Limited"],[recorddict objectForKey:@"Expanded"],[recorddict objectForKey:@"Detailed"],[recorddict objectForKey:@"Extended"],[recorddict objectForKey:@"Ltd"],[recorddict objectForKey:@"Exp"],[recorddict objectForKey:@"Detail"],[recorddict objectForKey:@"comp"],[recorddict objectForKey:@"refexp"],[recorddict objectForKey:@"refdetail"],[recorddict objectForKey:@"refcomp"],[recorddict objectForKey:@"consultexp"],[recorddict objectForKey:@"consultdetail"],[recorddict objectForKey:@"consultcomp"],[recorddict objectForKey:@"brief"],[recorddict objectForKey:@"intermediate"],[recorddict objectForKey:@"consultationcomp"],[recorddict objectForKey:@"mechanical"],[recorddict objectForKey:@"unattended"],[recorddict objectForKey:@"device"],[recorddict objectForKey:@"bath"],[recorddict objectForKey:@"microwave"],[recorddict objectForKey:@"hydrotheraphy"],[recorddict objectForKey:@"diathermy"],[recorddict objectForKey:@"infrared"],[recorddict objectForKey:@"ultraviolet"],[recorddict objectForKey:@"stim"],[recorddict objectForKey:@"iontophoresis"],[recorddict objectForKey:@"contrastbaths"],[recorddict objectForKey:@"ultrasound"],[recorddict objectForKey:@"unlisted"],[recorddict objectForKey:@"exersice"],[recorddict objectForKey:@"re"],[recorddict objectForKey:@"theraphy"],[recorddict objectForKey:@"gait"],[recorddict objectForKey:@"massage"],[recorddict objectForKey:@"manualtheraphy"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"fitting"],[recorddict objectForKey:@"activities"],[recorddict objectForKey:@"selfcare"],[recorddict objectForKey:@"grouptheraphy"],[recorddict objectForKey:@"training"],[recorddict objectForKey:@"wostimulation"],[recorddict objectForKey:@"wstimulation"],[recorddict objectForKey:@"regions1"],[recorddict objectForKey:@"regions2"],[recorddict objectForKey:@"regions3"],[recorddict objectForKey:@"extremity"],[recorddict objectForKey:@"urinalysis"],[recorddict objectForKey:@"muscletest"],[recorddict objectForKey:@"muscletesthand"],[recorddict objectForKey:@"rangeofmotion"],[recorddict objectForKey:@"rangeofmotionhand"],[recorddict objectForKey:@"wofave"],[recorddict objectForKey:@"wfwave"],[recorddict objectForKey:@"sensory"],[recorddict objectForKey:@"upper"],[recorddict objectForKey:@"lower"],[recorddict objectForKey:@"trunk"],[recorddict objectForKey:@"rl"],[recorddict objectForKey:@"test"],[recorddict objectForKey:@"evaluation"],[recorddict objectForKey:@"text1"],[recorddict objectForKey:@"text2"],[recorddict objectForKey:@"supplies"],[recorddict objectForKey:@"materials"],[recorddict objectForKey:@"testimony"],[recorddict objectForKey:@"insurance"],[recorddict objectForKey:@"conference"],[recorddict objectForKey:@"spine"],[recorddict objectForKey:@"cervicalview1"],[recorddict objectForKey:@"cervicalview2"],[recorddict objectForKey:@"cervicalview3"],[recorddict objectForKey:@"thoracic"],[recorddict objectForKey:@"thoracicview"],[recorddict objectForKey:@"scoliosis"],[recorddict objectForKey:@"lumbview1"],[recorddict objectForKey:@"lumbview2"],[recorddict objectForKey:@"pelvis"],[recorddict objectForKey:@"lumbar"],[recorddict objectForKey:@"elbow"],[recorddict objectForKey:@"wrist"],[recorddict objectForKey:@"hand"],[recorddict objectForKey:@"knee"],[recorddict objectForKey:@"ankle"],[recorddict objectForKey:@"foot"],[recorddict objectForKey:@"readother"],[recorddict objectForKey:@"pillow"],[recorddict objectForKey:@"lumbarsupport"],[recorddict objectForKey:@"orthoticleft"],[recorddict objectForKey:@"orthoticright"],[recorddict objectForKey:@"tensunit"],[recorddict objectForKey:@"coldpack"],[recorddict objectForKey:@"wristsplint"],[recorddict objectForKey:@"heellift"],[recorddict objectForKey:@"exerciseball"],[recorddict objectForKey:@"exerciseband"],[recorddict objectForKey:@"unlisteditem"],[recorddict objectForKey:@"charges"],[recorddict objectForKey:@"less"],[recorddict objectForKey:@"balance"],[recorddict objectForKey:@"payment"],[recorddict objectForKey:@"amt"],[recorddict objectForKey:@"amex"],[recorddict objectForKey:@"discover"],[recorddict objectForKey:@"mc"],[recorddict objectForKey:@"visa"],[recorddict objectForKey:@"cardsign"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"patientsign"],[recorddict objectForKey:@"drsign"],[recorddict objectForKey:@"reshedule"],[recorddict objectForKey:@"months"],secondEntity,value2];
    //NSLog(@"POST:%@",post);
    
    
    
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
    //    //NSLog(@"data %@",data);
    
    return data;
    
}
-(void)updatedata
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1update:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    ////NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        ////NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"dcfeeslip Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                
                [self performSegueWithIdentifier:@"dctowelcome" sender:self];
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form updation failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                [self performSegueWithIdentifier:@"dctowelcome" sender:self];
                
            }
        }
    }
}
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"DCFeeSlip.php?service=dcfeeslipdelete";
    
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
    //    //NSLog(@"data %@",data);
    
    return data;
    
}

- (void)dealloc {
    
    
    
    [super dealloc];
}
- (IBAction)segchange:(id)sender {
    if(seggy.selectedSegmentIndex==0){
        
        chargelabtext.hidden=YES;
        checkbut1.hidden=YES;
        checkbut2.hidden=YES;
        checkbut3.hidden=YES;
        checkbut4.hidden=YES;
        check1.hidden=YES;
        check2.hidden=YES;
        check3.hidden=YES;
        check4.hidden=YES;
        cardholderlab.hidden=YES;
        cardownersig.hidden=YES;
        seggyval=@"Cash";
        
    }
    else if(seggy.selectedSegmentIndex==1)
    {
        
        chargelabtext.hidden=NO;
        checkbut1.hidden=NO;
        checkbut2.hidden=NO;
        checkbut3.hidden=NO;
        checkbut4.hidden=NO;
        check1.hidden=NO;
        check2.hidden=NO;
        check3.hidden=NO;
        check4.hidden=NO;
        cardholderlab.hidden=NO;
        cardownersig.hidden=NO;
        seggyval=@"Cheque";
    }
}
- (IBAction)checkchange:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
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


@end
