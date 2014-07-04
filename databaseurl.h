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
    
}
+(databaseurl*)sharedInstance;
- (NSString*) DBurl;
-(BOOL)username:(NSString *)name;
-(BOOL)email:(NSString*)email;
@end
