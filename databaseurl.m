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
-(NSString*)DBurl
{
NSString * link=@"http://192.168.1.106:8888/Ehrservicefiles/Service/";
    return link;

}
-(BOOL)username:(NSString *)name
{
   
    if (([name length]>4)&&([name length]<32))
    {
        NSString *nameFormat = @"[A-Z0-9a-z_]+";
        NSPredicate *nameTest= [NSPredicate predicateWithFormat:@"SELF MATCHES %@", nameFormat];
       
        NSLog(@"resu1 %hhd", [nameTest evaluateWithObject:name]);
        if ([nameTest evaluateWithObject:name]==1) {
            return 1;
        }
        else
            
            return 0;
        
    }
    else
    {
        NSLog(@"condition failed");
        return 0;
    }
    
    
}
-(BOOL)email:(NSString*)email{
    
    NSString *emailFormat1 = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    NSPredicate *emailTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailFormat1];
    return [emailTest1 evaluateWithObject:email];
    
}

@end
