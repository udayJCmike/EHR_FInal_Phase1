//
//  databaseurl.m
//  webservice
//
//  Created by DeemsysInc on 6/19/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "databaseurl.h"
static databaseurl * appInstance;
@implementation databaseurl
+(databaseurl*)sharedInstance {
	if (!appInstance) {
		appInstance = [[databaseurl alloc] init];
        
	}
	return appInstance;
}
-(NSString*)headername
{
   Headername=@"Electronic Healthcare Record";
    return Headername;
    
}
-(NSString*)DBurl
{
   // NSString * link=@"http://192.168.1.106:8888/Ehrservicefiles/Service/";
    NSString * link=@"http://medsmonit.com/ehr/Service/";
    return link;
    
}
-(BOOL)username:(NSString *)name
{
    if (([name length]>3)&&([name length]<32))
    {
       // NSLog(@"inside username");
        NSString *nameFormat = @"[A-Z0-9a-z_@.]+";
        NSPredicate *nameTest= [NSPredicate predicateWithFormat:@"SELF MATCHES %@", nameFormat];
        return [nameTest evaluateWithObject:name];
        
    }
    else
    {
        return 0;
    }
    
}
-(BOOL)patname:(NSString *)name
{
    NSRange whiteSpaceRange = [name rangeOfCharacterFromSet:[NSCharacterSet whitespaceCharacterSet]];
   // NSLog(@"Found whitespace  ::%d",whiteSpaceRange.location);
    if (whiteSpaceRange.location >0)
    {
        if (([name length]>3)&&([name length]<32))
        {
            NSString *firstnameFormat = @"[A-Za-z ]+";
            NSPredicate *nameTest= [NSPredicate predicateWithFormat:@"SELF MATCHES %@", firstnameFormat];
            return [nameTest evaluateWithObject:name];
            
        }
        else
        {
            return 0;
        }
    } else
    {
        return 0;
    }
    
}
-(BOOL)firstname:(NSString *)name
{
    if (([name length]>3)&&([name length]<32))
    {
        NSString *firstnameFormat = @"[A-Za-z ]+";
        NSPredicate *nameTest= [NSPredicate predicateWithFormat:@"SELF MATCHES %@", firstnameFormat];
        return [nameTest evaluateWithObject:name];
        
    }
    else
    {
        return 0;
    }
    
    
}
-(BOOL)email:(NSString*)email{
    
    NSString *emailFormat1 = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    NSPredicate *emailTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailFormat1];
    return [emailTest1 evaluateWithObject:email];
    
}
-(BOOL)password:(NSString *)pass
{
    if (([pass length]>3)&&([pass length]<32))
    {
        NSString *passwordFormat = @"[A-Za-z0-9_@.]+";
        NSPredicate *passwordTest= [NSPredicate predicateWithFormat:@"SELF MATCHES %@", passwordFormat];
        return [passwordTest evaluateWithObject:pass];
        
    }
    else
    {
        return 0;
    }
    
    
}
-(BOOL)byfive:(NSString*)date
{
    
    NSString *dateFormat1 = @"[0-5]{1}";
    
    NSPredicate *dateTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", dateFormat1];
    return [dateTest1 evaluateWithObject:date];
    
}
-(BOOL)date:(NSString*)date{
    
    NSString *dateFormat1 = @"[0-9]+";
    
    NSPredicate *dateTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", dateFormat1];
    return [dateTest1 evaluateWithObject:date];
    
}
-(BOOL)mobilenumber:(NSString*)mobilenumber
{
    
    NSCharacterSet *textremove = [NSCharacterSet characterSetWithCharactersInString:@"(-)"];
    mobilenumber= [[mobilenumber componentsSeparatedByCharactersInSet: textremove] componentsJoinedByString:@""];
    
    
    
    NSString *mobileFormat1 =  @"[0-9]{10}";
    
    
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    if ([mobileTest1 evaluateWithObject:mobilenumber])
    {
        NSString *indexvalues=[mobilenumber substringWithRange: NSMakeRange (0, 3)];
        NSString *indexvalues1=[mobilenumber substringWithRange: NSMakeRange (3,3)];
        
        if (([indexvalues isEqualToString:@"000"])||([indexvalues1 isEqualToString:@"000"]))
        {
            return 0;
        }
        else
            return 1;
        
    }
    else
    {
        return [mobileTest1 evaluateWithObject:mobilenumber];
    }
}
-(BOOL)age:(NSString*)age
{
    
    NSString *ageval = @"[0-9]+";
    
    NSPredicate *ageTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", ageval];
    return [ageTest1 evaluateWithObject:age];
    
}
-(BOOL)address:(NSString*)address
{
    
    NSString *addval = @"[A-Za-z0-9_!@#$%^&*() ]+";
    
    NSPredicate *addTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", addval];
    return [addTest1 evaluateWithObject:address];
    
}
-(BOOL)comments:(NSString*)cmts{
    NSRange whiteSpaceRange = [cmts rangeOfCharacterFromSet:[NSCharacterSet whitespaceCharacterSet]];
    /// NSLog(@"Found whitespace  ::%d",whiteSpaceRange.location);
    if (whiteSpaceRange.location >0)
    {
        // NSString *comment = @"[A-Za-z0-9_!@#$%^&*() ]+";
        
        NSString *comment = @"[A-Za-z0-9_+., ]+";
        //  NSLog(@"Found whitespace  ::%d",whiteSpaceRange.location);
        NSPredicate *cmtTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", comment];
        return [cmtTest1 evaluateWithObject:cmts];
        
        
    }
    
    
    return 0;
    
    
    
    
    
}
-(BOOL)zipcode:(NSString *)zip
{
    NSString *zipFormat1 =  @"[0-9]{5}?";
    
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    if ([zipTest1 evaluateWithObject:zip])
    {
        if ([zip isEqualToString:@"00000"]) {
            return 0;
        }
        else
            return 1;
    }
    else
        return 0;
    
}
-(BOOL)time:(NSString*)tim
{
    
    NSString *time = @"[A-Z0-9]+";
    
    NSPredicate *timTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", time];
    return [timTest1 evaluateWithObject:tim];
    
}
-(BOOL)numbofmsgs:(NSString*)nof{
    
    NSString *numb = @"[0-9]+";
    
    NSPredicate *numTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", numb];
    return [numTest1 evaluateWithObject:nof];
    
}
-(BOOL)formreg:(NSString*)formregg{
    
    NSString *form = @"[0-9A-Z]+";
    
    NSPredicate *formTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", form];
    return [formTest1 evaluateWithObject:formregg];
    
}
-(BOOL)ssn:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{3}\\-[0-9]{2}\\-[0-9]{4}?";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    if( [countryTest1 evaluateWithObject:country1])
    {
        NSCharacterSet *textremove = [NSCharacterSet characterSetWithCharactersInString:@"-"];
        NSString* country11= [[country1 componentsSeparatedByCharactersInSet: textremove] componentsJoinedByString:@""];
        
        NSString *indexvalues=[country11 substringWithRange: NSMakeRange (0, 3)];
        NSString *indexvalues1=[country11 substringWithRange: NSMakeRange (3,2)];
        NSString *indexvalues2=[country11 substringWithRange: NSMakeRange (5,4)];
        //        NSLog(@"val1 %@",indexvalues);
        //         NSLog(@"val2 %@",indexvalues1);
        //         NSLog(@"val3 %@",indexvalues2);
        
        if (([indexvalues isEqualToString:@"000"])||([indexvalues1 isEqualToString:@"00"])||([indexvalues2 isEqualToString:@"0000"]))
        {
            return 0;
        }
        else{
            
            
            return 1;
        }
    }
    else
        return 0;
    
    
}



-(BOOL)otherfields:(NSString *)other

{
    
    NSRange whiteSpaceRange = [other rangeOfCharacterFromSet:[NSCharacterSet whitespaceCharacterSet]];
    //NSLog(@"Found whitespace  ::%d",whiteSpaceRange.location);
    if (whiteSpaceRange.location >0)
    {
        NSString *countryFormat1 = @"[A-Za-z. ]+";
        
        
        //NSLog(@"Found whitespace  ::%d",whiteSpaceRange.location);
        NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
        return [countryTest1 evaluateWithObject:other];
        
    }
    
    
    return 0;
    
}
-(BOOL)percentage:(NSString*)perce{
    
    NSString *numb = @"[0-9]{1,3}";
    
    NSPredicate *numTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", numb];
    return [numTest1 evaluateWithObject:perce];
    
}
-(BOOL)dateexpress:(NSString *)date
{
    NSString *dateFormat = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
   
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", dateFormat];
    return [countryTest1 evaluateWithObject:date];
    
}
-(BOOL)year:(NSString *)date
{
    NSString *dateFormat = @"[0-9]{1,4}";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", dateFormat];
    return [countryTest1 evaluateWithObject:date];
    
}
@end
