//
//  FailedBankInfo.m
//  FailedBanks
//
//  Created by Chao Xu on 13-10-29.
//  Copyright (c) 2013年 Chao Xu. All rights reserved.
//

#import "FailedBankInfo.h"

@implementation FailedBankInfo
@synthesize  name = _name;
@synthesize city = _city;
@synthesize state = _state;

-(id)initWithUniqueId:(int)uniqueId name:(NSString *)name city:(NSString *)city state:(NSString *)state{
    if (self =[super init]) {
        self.uniqueId = uniqueId;
        self.name = name;
        self.city = city;
        self.state = state;
    }
    return self;
}

-(void) dealloc{
    //[super dealloc];
    self.name = nil;
    self.city = nil;
    self.state = nil;
    
}
@end
















































