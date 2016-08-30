//
//  Person.h
//  StudyDemo
//
//  Created by zhuxiaobin on 16/8/30.
//  Copyright © 2016年 zhuxiaobin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *address;
@property (nonatomic, assign)BOOL sex;
@property (nonatomic, assign)NSInteger age;

- (id)objectForKeyedSubscript:(id)key;
- (void)setObject:(id)obj forKeyedSubscript:(NSString *)key;

@end
