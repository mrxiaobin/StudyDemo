//
//  MyArray.h
//  StudyDemo
//
//  Created by zhuxiaobin on 16/8/29.
//  Copyright © 2016年 zhuxiaobin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyArray : NSObject

- (instancetype)initWithStrings:(NSString *)string, ... NS_REQUIRES_NIL_TERMINATION;

- (id)objectAtIndexedSubscript:(NSUInteger)idx;
- (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx;

@end
