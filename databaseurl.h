//
//  databaseurl.h
//  webservice
//
//  Created by DeemsysInc on 6/19/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface databaseurl : NSObject
{
    NSString *Headername;
}
+(databaseurl*)sharedInstance;
-(NSString*)headername;
- (NSString*) DBurl;
-(BOOL)username:(NSString *)name;
-(BOOL)firstname:(NSString*)email;
-(BOOL)email:(NSString*)email;
-(BOOL)password:(NSString *)pass;
-(BOOL)date:(NSString*)date;
-(BOOL)mobilenumber:(NSString*)mobnum;
-(BOOL)age:(NSString*)age;
-(BOOL)address:(NSString*)address;
-(BOOL)comments:(NSString*)cmts;
-(BOOL)zipcode:(NSString *)zip;
-(BOOL)time:(NSString*)tim;
-(BOOL)numbofmsgs:(NSString*)nof;
-(BOOL)formreg:(NSString*)formregg;
-(BOOL)ssn:(NSString*)ssn;
-(BOOL)otherfields:(NSString *)other;
-(BOOL)percentage:(NSString *)date;
-(BOOL)patname:(NSString *)name;
-(BOOL)byfive:(NSString*)date;
-(BOOL)dateexpress:(NSString *)date;
-(BOOL)year:(NSString *)date;
@end
