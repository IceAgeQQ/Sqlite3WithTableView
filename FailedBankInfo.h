//
//  FailedBankInfo.h
//  FailedBanks
//
//  Created by Chao Xu on 13-10-29.
//  Copyright (c) 2013年 Chao Xu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FailedBankInfo : NSObject{
    int _uniquedId;
    NSString *_name;
    NSString *_city;
    NSString *_state;
}
@property (nonatomic,assign)int uniqueId;
@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *city;
@property (nonatomic,copy)NSString *state;

-(id)initWithUniqueId:(int)uniqueId name:(NSString *)name city:(NSString *)city state:(NSString *)state;

@end
