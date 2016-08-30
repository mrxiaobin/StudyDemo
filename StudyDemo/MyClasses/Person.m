//
//  Person.m
//  StudyDemo
//
//  Created by zhuxiaobin on 16/8/30.
//  Copyright © 2016年 zhuxiaobin. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)objectForKeyedSubscript:(id)key {
    return [self valueForKey:key];
}

- (void)setObject:(id)obj forKeyedSubscript:(NSString *)key {
    [self setValue:obj forKey:key];
}

- (NSString *)description {
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setObject:self.name ? : @"null" forKey:@"name"];
    [dic setObject:self.address ? : @"null" forKey:@"address"];
    [dic setObject:@(self.sex) ? : @NO forKey:@"sex"];
    [dic setObject:@(self.age) ? : @0 forKey:@"age"];

    return [dic description];
}

@end
