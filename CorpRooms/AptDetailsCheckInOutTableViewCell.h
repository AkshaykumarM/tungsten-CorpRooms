//
//  AptDetailsCheckInOutTableViewCell.h
//  CorpRooms
//
//  Created by Jayesh Kitukale on 5/19/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AptDetailsCheckInOutTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *checkInTime;
@property (weak, nonatomic) IBOutlet UILabel *checkoutTime;
@property (weak, nonatomic) IBOutlet UILabel *checkInDate;

@property (weak, nonatomic) IBOutlet UILabel *checkOutDate;
@end
