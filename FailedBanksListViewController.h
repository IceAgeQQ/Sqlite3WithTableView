//
//  FailedBanksListViewController.h
//  FailedBanks
//
//  Created by Chao Xu on 13-10-29.
//  Copyright (c) 2013年 Chao Xu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FailedBanksListViewController : UITableViewController{
    NSArray *_failedBankInfos;
}
@property (nonatomic,retain)NSArray *failedBankInfos;
@end
