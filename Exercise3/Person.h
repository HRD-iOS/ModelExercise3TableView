//
//  Person.h
//  Exercise3
//
//  Created by Yin Kokpheng on 11/10/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Person : UIViewController

-(id)initWithName:(NSString *)name age:(int) age gender:(NSString *) gender;

@property(weak,nonatomic) NSString *name;
@property int age;
@property(weak,nonatomic) NSString *gender;


-(NSString *)getGenderSymbol;

@end
