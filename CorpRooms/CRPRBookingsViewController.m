//
//  CRPRBookingsViewController.m
//  CorpRooms
//
//  Created by Jayesh Kitukale on 5/18/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "CRPRBookingsViewController.h"

@interface CRPRBookingsViewController ()

@end

@implementation CRPRBookingsViewController
{
    UIButton *topProfileBtn;
}
- (void)viewDidLoad {
    self.navigationItem.leftBarButtonItem.target=self.revealViewController;
    self.navigationItem.leftBarButtonItem.action=@selector(revealToggle:);
    [self.navigationController.topViewController.navigationItem setHidesBackButton:YES];
      [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    self.automaticallyAdjustsScrollViewInsets=NO;
    [self setupProfilePic];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 60;
    
}

- (float)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    // This will create a "invisible" footer
    return 0.01f;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 10;
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *simpleTableIdentifier;
    
    simpleTableIdentifier= @"bookingALLCell";
    
    CRPRALLBookingsTableViewCell *cell=(CRPRALLBookingsTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    
    cell.descriptionLBL.text = @"Mon 2 Apr, 2 rooms@Daffodis Appartment";
    cell.ownerNameLBL.text= @"Mr. Akshay Maldhure";

    
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
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
