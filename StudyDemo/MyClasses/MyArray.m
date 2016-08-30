//
//  MyArray.m
//  StudyDemo
//
//  Created by zhuxiaobin on 16/8/29.
//  Copyright © 2016年 zhuxiaobin. All rights reserved.
//

#import "MyArray.h"

@implementation MyArray
NSMutableArray *_attributes;

- (instancetype) init {
    self = [super init];
    if (self) {
        _attributes = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)objectAtIndexedSubscript:(NSUInteger)idx
{
    return _attributes[idx];
}

- (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx {
    _attributes[idx] = obj;
}

- (instancetype)initWithStrings:(NSString *)string, ... NS_REQUIRES_NIL_TERMINATION {
    self = [super init];
    if (self) {
        _attributes = [[NSMutableArray alloc]init];
        va_list arguments;
        va_start(arguments, string);
        NSString *currentStr = string;
        while (currentStr) {
            [_attributes addObject:currentStr];
            currentStr = va_arg(arguments, NSString *);
        }
        va_end(arguments);
    }
    return self;
}

- (NSString *)description {
    NSString *descPrefix = [NSString stringWithFormat:@"<MyArray: %p>", self];
    NSString *arrDesc = [_attributes description];
    
    return [descPrefix stringByAppendingString:arrDesc];
}

@end
