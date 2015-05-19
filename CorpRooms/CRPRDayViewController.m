//
//  ViewController.m
//  CorpRooms
//
//  Created by Jayesh Kitukale on 5/16/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "CRPRDayViewController.h"
#import "SWRevealViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
@interface CRPRDayViewController ()

@end

@implementation CRPRDayViewController
{
    UIButton *topProfileBtn;
}
- (void)viewDidLoad {
    SWRevealViewController *sw=self.revealViewController;
    sw.rearViewRevealWidth=self.view.frame.size.width-60.0f;
    self.navigationItem.leftBarButtonItem.target=self.revealViewController;
    self.navigationItem.leftBarButtonItem.action=@selector(revealToggle:);
    [self.navigationController.topViewController.navigationItem setHidesBackButton:YES];
   
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self setupProfilePic];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupProfilePic{
    /*Upper left profile pic work starts here*/
    @try{
        //here i am setting the frame of profile pic and assigning it to a button
        CGRect frameimg = CGRectMake(0, 0, 40, 40);
        topProfileBtn = [[UIButton alloc] initWithFrame:frameimg];
        UIButton *temp=[[UIButton alloc]initWithFrame:frameimg];
        //assigning the default background image
        [topProfileBtn setImage:[UIImage imageNamed:@"user.png"] forState:UIControlStateNormal];
        
        topProfileBtn.clipsToBounds=YES;
        [temp setShowsTouchWhenHighlighted:YES];
        topProfileBtn.imageEdgeInsets = UIEdgeInsetsMake(5,5,5,5);

        //setting up corner radious, border and border color width to make it circular
        topProfileBtn.layer.cornerRadius = 20.0f;
        topProfileBtn.layer.borderWidth = 2.0f;
        topProfileBtn.layer.borderColor = [[UIColor whiteColor] CGColor];
        topProfileBtn.layer.shadowColor=[[UIColor whiteColor] CGColor];
        [topProfileBtn setContentMode:UIViewContentModeScaleAspectFill];
    
        
        //assigning button to top bar iterm
        UIBarButtonItem *mailbutton =[[UIBarButtonItem alloc] initWithCustomView:topProfileBtn];
        
        //adding bar item to left bar button item
        self.navigationItem.rightBarButtonItem=mailbutton;
        
    }@catch(NSException *e){}
}



@end
