//
//  FailedBankDatabase.h
//  FailedBanks
//
//  Created by Chao Xu on 13-10-29.
//  Copyright (c) 2013年 Chao Xu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface FailedBankDatabase : NSObject{
    sqlite3 *_database;
}

+(FailedBankDatabase *)database;
-(NSArray *)failedBankInfos;

@end




















































