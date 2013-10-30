//
//  FailedBankDatabase.m
//  FailedBanks
//
//  Created by Chao Xu on 13-10-29.
//  Copyright (c) 2013年 Chao Xu. All rights reserved.
//

#import "FailedBankDatabase.h"
#import "FailedBankInfo.h"

@implementation FailedBankDatabase

static FailedBankDatabase *_database;

+(FailedBankDatabase *)database{
    if (_database == nil) {
        _database = [[FailedBankDatabase alloc]init];
    }
    return _database;
}

-(id)init{
    if (self = [super init]) {
        NSString *sqLiteDb = [[NSBundle mainBundle]pathForResource:@"banklist" ofType:@"sqlite3"];
        
        if (sqlite3_open([sqLiteDb UTF8String], &_database)!= SQLITE_OK) {
            NSLog(@"Failed to open database!");
        }
    }
    return self;
}
//retrieving the data from the database!
-(NSArray *)failedBankInfos{
    
    NSMutableArray *retval = [[NSMutableArray alloc] init];
    NSString *query = @"select id,name,city,state from failed_banks ORDER BY close_date DESC limit 6";
    sqlite3_stmt *statement;
    //execute it with the sqlite3_prepare_v2
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int uniqueId = sqlite3_column_int(statement, 0);
            char *nameChars = (char *)sqlite3_column_text(statement, 1);
            char *cityChars = (char *)sqlite3_column_text(statement, 2);
            char *stateChars = (char *)sqlite3_column_text(statement, 3);
            NSString *name = [[NSString alloc]initWithUTF8String:nameChars];
            NSString *city = [[NSString alloc]initWithUTF8String:cityChars];
            NSString *state = [[NSString alloc]initWithUTF8String:stateChars];
            FailedBankInfo *info = [[FailedBankInfo alloc]initWithUniqueId:uniqueId name:name city:city state:state];
            [retval addObject:info];
            
        }
        sqlite3_finalize(statement);
    }
    return retval;
}

-(void)dealloc{
    sqlite3_close(_database);
}
@end




















































