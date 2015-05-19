//
//  CRPRContactUsViewController.h
//  CorpRooms
//
//  Created by Jayesh Kitukale on 5/18/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"
#import "CRPRContactUsTableViewCell.h"
@interface CRPRContactUsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *mailIMGV;
@property (weak, nonatomic) IBOutlet UITextView *mailBodyTXTV;
@property (weak, nonatomic) IBOutlet UIButton *sendMSGBTN;

@end
