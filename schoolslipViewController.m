//
//  schoolslipViewController.m
//  schoolslip
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "schoolslipViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"


@interface schoolslipViewController ()
{
    databaseurl *du;
}

@end

@implementation schoolslipViewController
@synthesize recorddict;
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



NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10;
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"[A-Za-z]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 =@"[A-Za-z0-9]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
    
}
- (IBAction)segment1:(id)sender
{
    if(seg1.selectedSegmentIndex==0)
    {
        excused=@"WORK";
    }
    else if (seg1.selectedSegmentIndex==1)
    {
        excused=@"SCHOOL";
    }
    else if (seg1.selectedSegmentIndex==2)
    {
        excused=@"P.E";
    }
}
- (IBAction)segment2:(id)sender
{
    if(seg2.selectedSegmentIndex==0)
    {
        confined=@"LIGHT DUTY";
    }
    else if (seg2.selectedSegmentIndex==1)
    {
        confined=@"MODIFIED DUTY";
    }
}
- (IBAction)segment3:(id)sender
{
    if(seg3.selectedSegmentIndex==0)
    {
        maximum=@"10 lbs";
    }
    else if (seg3.selectedSegmentIndex==1)
    {
        maximum=@"20 lbs";
    }
    else if (seg3.selectedSegmentIndex==2)
    {
        maximum=@"30 lbs";
    }if(seg3.selectedSegmentIndex==3)
    {
        maximum=@"40 lbs";
    }
    else if (seg3.selectedSegmentIndex==4)
    {
        maximum=@"50 lbs";
    }
    
}
- (IBAction)segment4:(id)sender
{
    if(seg4.selectedSegmentIndex==0)
    {
        lo=@"10 lbs";
    }
    else if (seg4.selectedSegmentIndex==1)
    {
        lo=@"20 lbs";
    }
    else if (seg4.selectedSegmentIndex==2)
    {
        lo=@"30 lbs";
    }if(seg4.selectedSegmentIndex==3)
    {
        lo=@"40 lbs";
    }
    else if (seg4.selectedSegmentIndex==4)
    {
        lo=@"50 lbs";
    }
}
- (IBAction)segment5:(id)sender
{
    if(seg5.selectedSegmentIndex==0)
    {
        sitting=@"1 hrs";
    }
    else if (seg5.selectedSegmentIndex==1)
    {
        sitting=@"2 hrs";
    }
    else if (seg5.selectedSegmentIndex==2)
    {
        sitting=@"3 hrs";
    }if(seg5.selectedSegmentIndex==3)
    {
        sitting=@"4 hrs";
    }
    else if (seg5.selectedSegmentIndex==4)
    {
        sitting=@"5 hrs";
    }
}
- (IBAction)segment6:(id)sender
{
    if(seg6.selectedSegmentIndex==0)
    {
        standing=@"1 hrs";
    }
    else if (seg6.selectedSegmentIndex==1)
    {
        standing=@"2 hrs";
    }
    else if (seg6.selectedSegmentIndex==2)
    {
        standing=@"3 hrs";
    }if(seg6.selectedSegmentIndex==3)
    {
        standing=@"4 hrs";
    }
    else if (seg6.selectedSegmentIndex==4)
    {
        standing=@"5 hrs";
    }
}
- (IBAction)segment7:(id)sender
{
    if(seg7.selectedSegmentIndex==0)
    {
        retu=@"Duty";
    }
    else if (seg7.selectedSegmentIndex==1)
    {
        retu=@"School";
    }
    else if (seg7.selectedSegmentIndex==2)
    {
        retu=@"P.E";
    }
}

- (IBAction)save:(id)sender
{
    du=[[databaseurl alloc]init];
    texty1=text1.text;
    texty2=text2.text;
    texty3=text3.text;
    texty4=text4.text;
    texty5=text5.text;
    texty6=text6.text;
    texty7=text7.text;
    texty8=text8.text;
    texty9=text9.text;
    texty10=text10.text;
    
    
    if([texty1 isEqualToString:@""]){
        [recorddict setValue:@"null" forKey:@"beexcused"];
        
        
    }
    else{
        [recorddict setValue:text1.text forKey:@"beexcused"];
        
    }
    
    if([texty2 isEqualToString:@""]){
        [recorddict setValue:@"null" forKey:@"beconfined"];
        
        
    }
    else{
        [recorddict setValue:text2.text forKey:@"beconfined"];
        
    }
    
    if([texty3 isEqualToString:@""]){
        [recorddict setValue:@"null" forKey:@"lifting"];
        
        
    }
    else{
        [recorddict setValue:text3.text forKey:@"lifting"];
        
    }
    
    if([texty4 isEqualToString:@""]){
        [recorddict setValue:@"null" forKey:@"pushing"];
        
        
    }
    else{
        [recorddict setValue:text4.text forKey:@"pushing"];
        
    }
    
    if([texty5 isEqualToString:@""]){
        [recorddict setValue:@"null" forKey:@"drive"];
        
        
    }
    else{
        [recorddict setValue:text5.text forKey:@"drive"];
        
    }
    
    if([texty6 isEqualToString:@""]){
        [recorddict setValue:@"null" forKey:@"sitt"];
        
        
    }
    else{
        [recorddict setValue:text6.text forKey:@"sitt"];
        
    }
    
    if([texty7 isEqualToString:@""]){
        [recorddict setValue:@"null" forKey:@"stand"];
        
        
    }
    else{
        [recorddict setValue:text7.text forKey:@"stand"];
        
    }
    
    if([texty8 isEqualToString:@""]){
        [recorddict setValue:@"null" forKey:@"bend"];
        
        
    }
    else{
        [recorddict setValue:text8.text forKey:@"bend"];
        
    }
    
    if([texty9 isEqualToString:@""]){
        [recorddict setValue:@"null" forKey:@"entry"];
        
        
    }
    else{
        [recorddict setValue:text9.text forKey:@"entry"];
        
    }
    
    if([texty10 isEqualToString:@""]){
        [recorddict setValue:@"null" forKey:@"light"];
        
        
    }
    else{
        [recorddict setValue:text10.text forKey:@"light"];
        
    }
    
    
    [recorddict setValue:excused forKey:@"excused"];
    [recorddict setValue:confined forKey:@"confined"];
    [recorddict setValue:maximum forKey:@"maximum lifting"];
    [recorddict setValue:lo forKey:@"low force"];
    [recorddict setValue:sitting forKey:@"sitting"];
    [recorddict setValue:standing forKey:@"standing"];
    [recorddict setValue:retu forKey:@"return seg"];
    a=1;
    temp1 =[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[from.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[to.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[ret.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[ondate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[diagn.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(([temp1 length]!=0)&&
       ([temp2 length]!=0)&&
       ([temp3 length]!=0)&&
       ([temp4 length]!=0)&&
//       ([temp5 length]!=0)&&
       ([temp6 length]!=0)
       //([temp7 length]!=0)
       )
    {
        if([self validateDate:temp1]==1)
        {
            if([du patname:temp2]==1)
            {
                if([self validateDate:temp3]==1)
                {
                    if([self validateDate:temp4]==1)
                    {
                        if((([temp5 length]>0)&&([du otherfields:temp5]==1))||([temp5 length]==0))
                        {
                        
                            if([self validateDate:temp6]==1)
                            {
                                if((([temp7 length]>0)&&([du otherfields:temp7]==1))||([temp7 length]==0))
                                {
                                    
                                    [recorddict setValue:date.text forKey:@"Date"];
                                    [recorddict setValue:name.text forKey:@"Name"];
                                    [recorddict setValue:from.text forKey:@"Fromdate"];
                                    [recorddict setValue:to.text forKey:@"Todate"];
                                    [recorddict setValue:ret.text forKey:@"returntext"];
                                    [recorddict setValue:ondate.text forKey:@"Ondate"];
                                    [recorddict setValue:diagn.text forKey:@"Diagnosis"];
                                    //                                    NSLog(@"Success!!! %@",recorddict);
                                    //                                    NSLog(@"recorddict count %d",[recorddict count]);
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid diagnosis."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid date."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid return."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid date."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                    }
                    
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid date."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                }
                
            }
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid name."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
            }
            
        }
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid date."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
        }
        
    }
    else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
    }
    if (a==1) {
        
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
        else
        {
            NULL;
        }
        
        
        
    }
    
}
-(void)updatedata
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1update:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    //NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        //NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"workschool Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                
                [self performSegueWithIdentifier:@"schooltowelcome" sender:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form updation failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                [self performSegueWithIdentifier:@"schooltowelcome" sender:self];
            }
        }
    }
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"WorkSchool.php?service=workschooledit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&date=%@&letter=%@&beexcused=%@&excused=%@&beconfined=%@&confined=%@&lifting=%@&lift=%@&pushing=%@&push=%@&drive=%@&sitting=%@&sit=%@&standing=%@&stand=%@&bend=%@&entry=%@&light=%@&froms=%@&tos=%@&returns=%@&regular=%@&returndate=%@&diagnosis=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"Date"],[recorddict objectForKey:@"Name"],[recorddict objectForKey:@"beexcused"],[recorddict objectForKey:@"excused"],[recorddict objectForKey:@"beconfined"],[recorddict objectForKey:@"confined"],[recorddict objectForKey:@"lifting"],[recorddict objectForKey:@"maximum lifting"],[recorddict objectForKey:@"pushing"],[recorddict objectForKey:@"low force"],[recorddict objectForKey:@"drive"],[recorddict objectForKey:@"sitt"],[recorddict objectForKey:@"sitting"],[recorddict objectForKey:@"stand"],[recorddict objectForKey:@"standing"],[recorddict objectForKey:@"bend"],[recorddict objectForKey:@"entry"],[recorddict objectForKey:@"light"],[recorddict objectForKey:@"Fromdate"],[recorddict objectForKey:@"Todate"],[recorddict objectForKey:@"returntext"],[recorddict objectForKey:@"return seg"],[recorddict objectForKey:@"Ondate"],[recorddict objectForKey:@"Diagnosis"],secondEntity,value2];
    
    
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
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
    //    NSLog(@"data %@",data);
    
    return data;
    
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
			//NSLog(@"Access Not Available");
			break;
		}
            
		case ReachableViaWWAN:
		{
			isConnect=YES;
			//NSLog(@"Reachable WWAN");
			break;
		}
		case ReachableViaWiFi:
		{
			isConnect=YES;
			//NSLog(@"Reachable WiFi");
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
    
    
}-(void)insertdata
{
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    //NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        //NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"workschool Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                
                [self performSegueWithIdentifier:@"schooltowelcome" sender:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                [self performSegueWithIdentifier:@"schooltowelcome" sender:self];
            }
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"WorkSchool.php?service=workschoolinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    // NSLog(@"values in record dictionaries::%@",recorddict);
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&date=%@&letter=%@&beexcused=%@&excused=%@&beconfined=%@&confined=%@&lifting=%@&lift=%@&pushing=%@&push=%@&drive=%@&sitting=%@&sit=%@&standing=%@&stand=%@&bend=%@&entry=%@&light=%@&froms=%@&tos=%@&returns=%@&regular=%@&returndate=%@&diagnosis=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"Date"],[recorddict objectForKey:@"Name"],[recorddict objectForKey:@"beexcused"],[recorddict objectForKey:@"excused"],[recorddict objectForKey:@"beconfined"],[recorddict objectForKey:@"confined"],[recorddict objectForKey:@"lifting"],[recorddict objectForKey:@"maximum lifting"],[recorddict objectForKey:@"pushing"],[recorddict objectForKey:@"low force"],[recorddict objectForKey:@"drive"],[recorddict objectForKey:@"sitt"],[recorddict objectForKey:@"sitting"],[recorddict objectForKey:@"stand"],[recorddict objectForKey:@"standing"],[recorddict objectForKey:@"bend"],[recorddict objectForKey:@"entry"],[recorddict objectForKey:@"light"],[recorddict objectForKey:@"Fromdate"],[recorddict objectForKey:@"Todate"],[recorddict objectForKey:@"returntext"],[recorddict objectForKey:@"return seg"],[recorddict objectForKey:@"Ondate"],[recorddict objectForKey:@"Diagnosis"],secondEntity,value2];
    
    
    
    NSURL *url = [NSURL URLWithString:url2];
    
    // NSLog(@"postvalue%@",post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    // NSLog(@"postrequest %@",url);
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
    
    // NSLog(@"data %@",data);
    
    return data;
    
}


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
        
        //NSLog(@"%@ lucky numbers",luckyNumbers);
        if (luckyNumbers == nil)
        {
            
            //NSLog(@"luckyNumbers == nil");
            
        }
        else
        {
            
            NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
            // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"workschool Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    
                    
                    
                    [self performSegueWithIdentifier:@"schooltowelcome" sender:self];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    [self performSegueWithIdentifier:@"schooltowelcome" sender:self];
                }
            }
        }
        
    }
}
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"WorkSchool.php?service=workschooldelete";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //    NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
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
    //    NSLog(@"data %@",data);
    
    return data;
    
}

- (IBAction)cancel:(id)sender {
    [self performSegueWithIdentifier:@"schooltowelcome" sender:self];
}

- (IBAction)reset:(id)sender {
    
    
    text1.text=@"";
    text2.text=@"";
    text3.text=@"";
    text4.text=@"";
    text5.text=@"";
    text6.text=@"";
    text7.text=@"";
    text8.text=@"";
    text9.text=@"";
    text10.text=@"";
    date.text=@"";
    name.text=@"";
    from.text=@"";
    to.text=@"";
    ret.text=@"";
    ondate.text=@"";
    diagn.text=@"";
    excused=@"null";
    confined=@"null";
    maximum=@"null";
    lo=@"null";
    sitting=@"null";
    standing=@"null";
    retu=@"null";
    [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    
    [seg7 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
}







- (void)viewDidLoad
{
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    [super viewDidLoad];
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    excused=@"null";
    confined=@"null";
    maximum=@"null";
    lo=@"null";
    sitting=@"null";
    standing=@"null";
    retu=@"null";
    update.hidden=YES;
    deletefuc.hidden=YES;
    reset1.hidden=YES;
    cancel1.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    recorddict=[[NSMutableDictionary alloc]init];
    [self Getdata];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    // NSLog(@"response %@",json);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    // NSLog(@"luckynumbers %@",luckyNumbers);
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    // NSLog(@"items app %@",itemsApp);
    NSArray *items1App=[itemsApp objectForKey:@"workschooluser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            // NSLog(@"arraylist count %d",[arrayList1 count]);
            
            
            temp10=[arrayList1 objectForKey:@"date"];
            temp11=[arrayList1 objectForKey:@"letter"];
            temp12=[arrayList1 objectForKey:@"beexcused"];
            temp13=[arrayList1 objectForKey:@"excused"];
            
            temp14=[arrayList1 objectForKey:@"beconfined"];
            temp15=[arrayList1 objectForKey:@"confined"];
            temp16=[arrayList1 objectForKey:@"lifting"];
            temp17=[arrayList1 objectForKey:@"lift"];
            temp18=[arrayList1 objectForKey:@"pushing"];
            temp19=[arrayList1 objectForKey:@"push"];
            
            temp20=[arrayList1 objectForKey:@"drive"];
            temp21=[arrayList1 objectForKey:@"sitting"];
            temp22=[arrayList1 objectForKey:@"sit"];
            temp23=[arrayList1 objectForKey:@"standing"];
            temp24=[arrayList1 objectForKey:@"stand"];
            temp25=[arrayList1 objectForKey:@"bend"];
            
            temp26=[arrayList1 objectForKey:@"entry"];
            temp27=[arrayList1 objectForKey:@"light"];
            temp28=[arrayList1 objectForKey:@"froms"];
            temp29=[arrayList1 objectForKey:@"tos"];
            temp31=[arrayList1 objectForKey:@"returns"];
            temp32=[arrayList1 objectForKey:@"regular"];
            
            temp33=[arrayList1 objectForKey:@"returndate"];
            temp34=[arrayList1 objectForKey:@"diagnosis"];
            
            
            
            [self setdatas];
            
            
            
        }
        update.hidden=NO;
        reset1.hidden=NO;
        deletefuc.hidden=NO;
        cancel1.hidden=NO;
        save.hidden=YES;
        reset.hidden=YES;
        cancel.hidden=YES;
        
        
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas read" forKey:@"status"];
        //  NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        update.hidden=YES;
        reset1.hidden=YES;
        deletefuc.hidden=YES;
        save.hidden=NO;
        reset.hidden=NO;
        cancel.hidden=NO;
        cancel1.hidden=YES;
        
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas not read" forKey:@"status"];
    }
    //  [[NSUserDefaults standardUserDefaults]synchronize];
    
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"WorkSchool.php?service=workschoolselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //    NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
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

-(void)setdatas
{
    date.text=temp10;
    name.text=temp11;
    if([temp12 isEqualToString:@"null"]){
        text1.text=@"";
        
    }
    else{
        text1.text=temp12;
    }
    
    
    if([temp14 isEqualToString:@"null"]){
        text2.text=@"";
        
    }
    else{
        text2.text=temp14;
    }
    
    
    if([temp16 isEqualToString:@"null"]){
        text3.text=@"";
        
    }
    else{
        text3.text=temp16;
    }
    
    if([temp18 isEqualToString:@"null"]){
        text4.text=@"";
        
    }
    else{
        text4.text=temp18;
    }
    
    if([temp20 isEqualToString:@"null"]){
        text5.text=@"";
        
    }
    else{
        text5.text=temp20;
    }
    
    if([temp21 isEqualToString:@"null"]){
        text6.text=@"";
        
    }
    else{
        text6.text=temp21;
    }
    
    if([temp23 isEqualToString:@"null"]){
        text7.text=@"";
        
    }
    else{
        text7.text=temp23;
    }
    
    
    if([temp25 isEqualToString:@"null"]){
        text8.text=@"";
        
    }
    else{
        text8.text=temp25;
    }
    
    
    if([temp26 isEqualToString:@"null"]){
        text9.text=@"";
        
    }
    else{
        text9.text=temp26;
    }
    
    
    if([temp27 isEqualToString:@"null"]){
        text10.text=@"";
        
    }
    else{
        text10.text=temp27;
    }
    
    from.text=temp28;
    to.text=temp29;
    ret.text=temp31;
    ondate.text=temp33;
    diagn.text=temp34;
    
    
    if([temp13 isEqualToString:@"WORK"]){
        [seg1 setSelectedSegmentIndex:0];
        excused=@"WORK";
    }
    else if([temp13 isEqualToString:@"SCHOOL"]){
        [seg1 setSelectedSegmentIndex:1];
        excused=@"SCHOOL";
        
    }
    else if([temp13 isEqualToString:@"P.E"]){
        [seg1 setSelectedSegmentIndex:2];
        excused=@"P.E";
    }
    
    
    if([temp15 isEqualToString:@"LIGHT DUTY"]){
        [seg2 setSelectedSegmentIndex:0];
        confined=@"LIGHT DUTY";
    }
    else if([temp15 isEqualToString:@"MODIFIED DUTY"]){
        [seg2 setSelectedSegmentIndex:1];
        confined=@"MODIFIED DUTY";
        
    }
    
    
    
    if([temp17 isEqualToString:@"10 lbs"]){
        [seg3 setSelectedSegmentIndex:0];
        maximum=@"10 lbs";
    }
    else if([temp17 isEqualToString:@"20 lbs"]){
        [seg3 setSelectedSegmentIndex:1];
        maximum=@"20 lbs";
        
    }
    else if([temp17 isEqualToString:@"30 lbs"]){
        [seg3 setSelectedSegmentIndex:2];
        maximum=@"30 lbs";
        
    }
    else if([temp17 isEqualToString:@"40 lbs"]){
        [seg3 setSelectedSegmentIndex:3];
        maximum=@"40 lbs";
        
    }
    else if([temp17 isEqualToString:@"50 lbs"]){
        [seg3 setSelectedSegmentIndex:4];
        maximum=@"50 lbs";
        
    }
    
    
    if([temp19 isEqualToString:@"10 lbs"]){
        [seg4 setSelectedSegmentIndex:0];
        lo=@"10 lbs";
    }
    else if([temp19 isEqualToString:@"20 lbs"]){
        [seg4 setSelectedSegmentIndex:1];
        lo=@"20 lbs";
        
    }
    else if([temp19 isEqualToString:@"30 lbs"]){
        [seg4 setSelectedSegmentIndex:2];
        lo=@"30 lbs";
        
    }
    else if([temp19 isEqualToString:@"40 lbs"]){
        [seg4 setSelectedSegmentIndex:3];
        lo=@"40 lbs";
        
    }
    else if([temp19 isEqualToString:@"50 lbs"]){
        [seg4 setSelectedSegmentIndex:4];
        lo=@"50 lbs";
        
    }
    
    
    if([temp22 isEqualToString:@"1 hrs"]){
        [seg5 setSelectedSegmentIndex:0];
        sitting=@"1 hrs";
    }
    else if([temp22 isEqualToString:@"2 hrs"]){
        [seg5 setSelectedSegmentIndex:1];
        sitting=@"2 hrs";
        
    }
    else if([temp22 isEqualToString:@"3 hrs"]){
        [seg5 setSelectedSegmentIndex:2];
        sitting=@"3 hrs";
        
    }
    else if([temp22 isEqualToString:@"4 hrs"]){
        [seg5 setSelectedSegmentIndex:3];
        sitting=@"4 hrs";
        
    }
    else if([temp22 isEqualToString:@"5 hrs"]){
        [seg5 setSelectedSegmentIndex:4];
        sitting=@"5 hrs";
        
    }
    
    if([temp24 isEqualToString:@"1 hrs"]){
        [seg6 setSelectedSegmentIndex:0];
        standing=@"1 hrs";
    }
    else if([temp24 isEqualToString:@"2 hrs"]){
        [seg6 setSelectedSegmentIndex:1];
        standing=@"2 hrs";
        
    }
    else if([temp24 isEqualToString:@"3 hrs"]){
        [seg6 setSelectedSegmentIndex:2];
        standing=@"3 hrs";
        
    }
    else if([temp24 isEqualToString:@"4 hrs"]){
        [seg6 setSelectedSegmentIndex:3];
        standing=@"4 hrs";
        
    }
    else if([temp24 isEqualToString:@"5 hrs"]){
        [seg6 setSelectedSegmentIndex:4];
        standing=@"5 hrs";
        
    }
    
    
    if([temp32 isEqualToString:@"Duty"]){
        [seg7 setSelectedSegmentIndex:0];
        retu=@"Duty";
    }
    else if([temp32 isEqualToString:@"School"]){
        [seg7 setSelectedSegmentIndex:1];
        retu=@"School";
        
    }
    else if([temp32 isEqualToString:@"P.E"]){
        [seg7 setSelectedSegmentIndex:2];
        retu=@"P.E";
        
    }
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissKeyboard{
    
    
    [text1 resignFirstResponder];
    [text2 resignFirstResponder];
    [text3 resignFirstResponder];
    [text4 resignFirstResponder];
    [text5 resignFirstResponder];
    [text6 resignFirstResponder];
    [text7 resignFirstResponder];
    [text8 resignFirstResponder];
    [text9 resignFirstResponder];
    [text10 resignFirstResponder];
    [date resignFirstResponder];
    [name resignFirstResponder];
    [from resignFirstResponder];
    [to resignFirstResponder];
    [ret resignFirstResponder];
    [ondate resignFirstResponder];
    [diagn resignFirstResponder];
    
    
    
}

- (void)dealloc {
    
    
    [super dealloc];
}

@end
