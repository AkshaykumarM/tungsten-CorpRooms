//
//  CRPRBookingDetailsViewController.m
//  CorpRooms
//
//  Created by Jayesh Kitukale on 5/19/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "CRPRBookingDetailsViewController.h"

@interface CRPRBookingDetailsViewController ()

@end

@implementation CRPRBookingDetailsViewController
{
    NSArray *identifire;
}
- (void)viewDidLoad {
    
    identifire=[NSArray arrayWithObjects:@"appartmentImageCell",@"nameCell",@"addressCell",@"bookingCell",@"checkInOutCell",@"totalCell",nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (float)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    // This will create a "invisible" footer
    return 0.01f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0){
        return 170;
    }
    if(indexPath.row==1){
        return 80;
    }
    if(indexPath.row==2){
        return 140;
    }
    if(indexPath.row==3){
        return 80;
    }
    if(indexPath.row==4){
        return 90;
    }
    if(indexPath.row==5){
        return 80;
    }
    else{
        return 0;
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 6;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier;
    simpleTableIdentifier= [identifire objectAtIndex:indexPath.row];
    if(indexPath.row==0){
    
    AppDetailsImageTableViewCell *cell=(AppDetailsImageTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
        [cell.aptIMGView setImage:[UIImage imageNamed:@"Sample.jpeg"]];
    return cell;
    }
    if(indexPath.row==1){
        
        AppDetailsAptNameTableViewCell *cell=(AppDetailsAptNameTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
        
        cell.aptname.text = @"Dafodils";
        return cell;
    }
    if(indexPath.row==2){
        
        AptDetailsAddressTableViewCell *cell=(AptDetailsAddressTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
        
        cell.address.text = @"Flat no 13A,Daffodils Apartments,Kunj Colony, Pimple Saudagar, Pune - 411006";
        return cell;
    }
    if(indexPath.row==3){
       
        AppDetailsAptNameTableViewCell *cell=(AppDetailsAptNameTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
        
        cell.aptname.text = @"2 Rooms";
        return cell;
    }
    if(indexPath.row==4){
        
        AptDetailsCheckInOutTableViewCell *cell=(AptDetailsCheckInOutTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
        
        cell.checkInTime.text = @"10 am";
        cell.checkoutTime.text=@"10 am";
        cell.checkInDate.text=@"Fri, 22 Apr, 2015";
        cell.checkOutDate.text=@"Fri, 22 Apr, 2015";
        return cell;
    }
    if(indexPath.row==5){
        AptDetailsTotalTableViewCell *cell=(AptDetailsTotalTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
        
        cell.totalpaid.text = @"2000INR";
        cell.totalbill.text=@"2000INR";
        
        return cell;
    }
    else{
        return nil;
    }
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
