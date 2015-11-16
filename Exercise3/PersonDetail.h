//
//  PersonDetail.h
//  Exercise3
//
//  Created by Yin Kokpheng on 11/10/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface PersonDetail : UIViewController

@property(strong,nonatomic) Person *p;
@property (weak, nonatomic) IBOutlet UILabel *detailName;
@property (weak, nonatomic) IBOutlet UILabel *detailAge;
@property (weak, nonatomic) IBOutlet UILabel *detailGender;

@end
