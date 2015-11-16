//
//  Person.m
//  Exercise3
//
//  Created by Yin Kokpheng on 11/10/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "Person.h"

@interface Person ()

@end

@implementation Person

-(id)initWithName:(NSString *)name age:(int) age gender:(NSString *)gender{
    if (!(self = [super init]))
        return nil;
    _name = name;
    _age = age;
    _gender = gender;
    return self;
}

-(NSString *)getGenderSymbol{
    
    NSString *gender = [_gender lowercaseString];
    
    if([gender isEqual:@"male"] ||[gender isEqual:@"m"])
        return @"\u2640";
    
    else if([gender isEqual:@"female"] ||[gender isEqual:@"f"])
        return @"\u2642";
    
    return  @"\u26A5";
    
}

@end
