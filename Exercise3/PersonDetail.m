//
//  PersonDetail.m
//  Exercise3
//
//  Created by Yin Kokpheng on 11/10/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "PersonDetail.h"

@interface PersonDetail ()

@end

@implementation PersonDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    _detailName.text = [NSString stringWithFormat:@"Name    : %@", [_p name]];
    _detailAge.text = [NSString stringWithFormat:@"Age       : %d",[_p age]];
    
    NSString *gender = [[_p gender] lowercaseString];
    
    if([gender isEqual:@"male"] ||[gender isEqual:@"m"]){
        _detailGender.text = @"Gender  : Male";
    }else if([gender isEqual:@"female"] ||[gender isEqual:@"f"]){
        _detailGender.text = @"Gender : Female";
    }else{
        _detailGender.text = @"Gender : Unknown";
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
