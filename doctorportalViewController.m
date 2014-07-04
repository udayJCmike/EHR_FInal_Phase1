//
//  doctorportalViewController.m
//  EHR
//
//  Created by DeemSysInc on 26/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "doctorportalViewController.h"
#import "SBJSON.h"
#import "databaseurl.h"
@interface doctorportalViewController ()

@end

@implementation doctorportalViewController
@synthesize physical;
@synthesize radiologic;
@synthesize initial;
@synthesize soapnotes;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    table_name=[NSArray arrayWithObjects:@"tbl_hamiltonchiropractic",@"tbl_physicalexam",@"tbl_radiologicreport", nil];
    HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.delegate = self;
    HUD.labelText = @"Loading";
    [HUD show:YES];
    [self getdata];
}
-(void)getdata
{
    
    NSString*username=  [[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    for (int i=0;i<[table_name count];i++)
    {
        
        
        NSString *response=[self HttpPostEntityFirst1:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV" Entitythird:[table_name objectAtIndex:i]];
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
            NSArray *items1App=[menu objectForKey:@"user List"];
            
            if ([items1App count]>0)
            {
                
                for (id anUpdate1 in items1App)
                {
                    NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
                    
                    NSString *menu =[arrayList1 objectForKey:@"available"];
                    if (([menu isEqualToString:@"1"])&&([[arrayList1 objectForKey:@"table"] isEqualToString:@"tbl_hamiltonchiropractic"]))
                    {
                        initial.hidden=YES;
                    }
                    else if (([menu isEqualToString:@"0"])&&([[arrayList1 objectForKey:@"table"] isEqualToString:@"tbl_hamiltonchiropractic"]))
                    {
                        initial.hidden=NO;
                    }
                    if (([menu  isEqualToString:@"1"])&&([[arrayList1 objectForKey:@"table"] isEqualToString:@"tbl_physicalexam"]))
                    {
                        physical.hidden=YES;
                    }
                    else  if (([menu  isEqualToString:@"0"])&&([[arrayList1 objectForKey:@"table"] isEqualToString:@"tbl_physicalexam"]))
                    {
                        physical.hidden=NO;
                    }
                    if (([menu isEqualToString:@"1"])&&([[arrayList1 objectForKey:@"table"] isEqualToString:@"tbl_radiologicreport"]))
                    {
                        radiologic.hidden=YES;
                    }
                    else if (([menu isEqualToString:@"0"])&&([[arrayList1 objectForKey:@"table"] isEqualToString:@"tbl_radiologicreport"]))
                    {
                        radiologic.hidden=NO;
                    }
                    
                    
                }
                
                [HUD hide:YES];
                
            }
            else
            {
                [HUD hide:YES];
            }
            
            
        }
    }
    
    
}
-(void)viewWillAppear:(BOOL)animated
{
    table_name=[NSArray arrayWithObjects:@"tbl_hamiltonchiropractic",@"tbl_physicalexam",@"tbl_radiologicreport", nil];
    [super viewWillAppear:animated];
    
    
    [self getdata];
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2 Entitythird:(NSString*)third
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Login.php?service=doctorusernameselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"username=%@&table=%@&%@=%@",value1,third,secondEntity,value2];
    
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
    NSLog(@"data %@",data);
    
    return data;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    [super dealloc];
}
@end
