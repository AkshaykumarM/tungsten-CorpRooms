//
//  SideBarMenuViewController.m
//  CorpRooms
//
//  Created by Jayesh Kitukale on 5/18/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "SideBarMenuViewController.h"
#import "SideBarMenuTableViewCell.h"
@interface SideBarMenuViewController ()
@property(nonatomic,strong) NSArray *options,*icons,*identifire,*iconsH;
@end

@implementation SideBarMenuViewController
@synthesize options,icons,identifire,iconsH;
- (void)viewDidLoad {
    options = [NSArray arrayWithObjects:@"DASHBOARD",@"PROFILE", @"BOOKINGS",@"CONTACT US", nil];
    
    icons= [NSArray arrayWithObjects:@"Dashboard.png",@"user.png",@"booking.png",@"About.png",nil];
    iconsH= [NSArray arrayWithObjects:@"Dashboard-H.png",@"user-H.png",@"booking-H.png",@"About-H.png",nil];
    identifire=[NSArray arrayWithObjects:@"dashboardCell",@"profileCell",@"bookingCell",@"contactCell",nil];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
        return 45;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (float)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    // This will create a "invisible" footer
    return 0.01f;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [options count];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier;
    
    simpleTableIdentifier= [self.identifire objectAtIndex:indexPath.row];
    
    SideBarMenuTableViewCell *cell=(SideBarMenuTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    
    cell.menuTitleLBL.text = [options objectAtIndex:indexPath.row];
    cell.menuIMGView.image = [UIImage imageNamed:[icons objectAtIndex:indexPath.row]];
    cell.menuIMGView.highlightedImage = [UIImage imageNamed:[iconsH objectAtIndex:indexPath.row]];
   
    [cell setBackgroundColor:[UIColor clearColor]];
    return cell;
}

/*
 #pragma mark - Navigationa
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
@end
