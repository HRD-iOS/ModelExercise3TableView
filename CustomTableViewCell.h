//
//  CustomTableViewCell.h
//  Exercise3
//
//  Created by Yin Kokpheng on 11/10/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *customLabelName;
@property (weak, nonatomic) IBOutlet UILabel *customLabelAge;
@property (weak, nonatomic) IBOutlet UILabel *customLableGender;

@end
