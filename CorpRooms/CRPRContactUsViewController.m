//
//  CRPRContactUsViewController.m
//  CorpRooms
//
//  Created by Jayesh Kitukale on 5/18/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "CRPRContactUsViewController.h"

@interface CRPRContactUsViewController ()

@end

@implementation CRPRContactUsViewController
{
    NSArray *imagenames,*titlelable;
    
}
- (void)viewDidLoad {
    self.navigationItem.leftBarButtonItem.target=self.revealViewController;
    self.navigationItem.leftBarButtonItem.action=@selector(revealToggle:);
    [self.navigationController.topViewController.navigationItem setHidesBackButton:YES];
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    imagenames=[NSArray arrayWithObjects:@"Call.png",@"Website.png",@"Location.png", nil];
    [super viewDidLoad];
    titlelable=[NSArray arrayWithObjects:@"9595903117",@"www.corprooms.com", @"Pimple gurav,Pune 27",nil];
      self.automaticallyAdjustsScrollViewInsets = NO;
    // Do any additional setup after loading the view.
}
-(void)viewDidAppear:(BOOL)animated{
   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return self.view.frame.size.height/4;
    
}

- (float)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    // This will create a "invisible" footer
    return 0.01f;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 3;
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier;
    
    simpleTableIdentifier= @"contactCell";
    
    CRPRContactUsTableViewCell *cell=(CRPRContactUsTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    
    cell.titleLBL.text = [titlelable objectAtIndex:indexPath.row];
    cell.imgV.image = [UIImage imageNamed:[imagenames objectAtIndex:indexPath.row]];
    cell.titleLBL.text = [titlelable objectAtIndex:indexPath.row];
    
    [cell setBackgroundColor:[UIColor clearColor]];
    if(indexPath.row%2==0){
        cell.backgroundColor=[UIColor colorWithRed:0.835 green:0.859 blue:0.306 alpha:1];
    }
    else{
        cell.backgroundColor=[UIColor whiteColor];

    }
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




@end
