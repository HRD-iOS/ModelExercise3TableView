//
//  CustomTableViewController.m
//  Exercise3
//
//  Created by Yin Kokpheng on 11/10/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "CustomTableViewController.h"
#import "Person.h"
#import "PersonDetail.h"
#import "CustomTableViewCell.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
NSArray *contact;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customTableView.delegate = self;
    self.customTableView.dataSource = self;
    
    Person *p1 = [[Person alloc]initWithName:@"Kokpheng" age:24 gender:@"M"];
    Person *p2 = [[Person alloc]initWithName:@"Thana" age:3 gender:@"F"];
    Person *p3 = [[Person alloc]initWithName:@"Teckchun" age:22 gender:@"male"];
    Person *p4 = [[Person alloc]initWithName:@"Ponareay" age:21 gender:@"female"];
    Person *p5 = [[Person alloc]initWithName:@"Rotha" age:25 gender:@"P"];
    Person *p6 = [[Person alloc]initWithName:@"Dara" age:24 gender:@"m"];
    Person *p7 = [[Person alloc]initWithName:@"Kimhan" age:22 gender:@"Female"];
      Person *p8 = [[Person alloc]initWithName:@"Reksmey" age:30 gender:@"f"];
    
    contact = [[NSArray alloc]initWithObjects:p1, p2, p3, p4, p5, p6, p7, p8, nil];
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [contact count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [_customTableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.customLabelName.text = [NSString stringWithFormat:@"Name: %@",[[contact objectAtIndex:indexPath.row] name]];
    cell.customLabelAge.text = [NSString stringWithFormat:@"Age   : %d", [[contact objectAtIndex:indexPath.row] age]];
    cell.customLableGender.text=[[contact objectAtIndex:indexPath.row] getGenderSymbol];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self performSegueWithIdentifier:@"personDetail" sender: [contact objectAtIndex:indexPath.row]];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PersonDetail *pd = segue.destinationViewController;
    pd.p = sender;
}


@end
