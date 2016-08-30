//
//  ViewController.m
//  StudyDemo
//
//  Created by zhuxiaobin on 16/8/29.
//  Copyright © 2016年 zhuxiaobin. All rights reserved.
//

#import "ViewController.h"
#import "MyArray.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *person = [[Person alloc] init];
    person[@"name"] = @"Mike";
    person[@"address"] = @"Wuhan";
    person[@"sex"] = @YES;
    person[@"age"] = @10;
    
    NSLog(@"%@ %@", person[@"name"], person[@"age"]);
    NSLog(@"%@", person);

    MyArray *myarr = [[MyArray alloc] initWithStrings:@"Hello", @"How", @"are", @"you", nil];
    NSLog(@"%@", myarr);
    
    myarr[0] = @"Hi!";
    myarr[1] = @"World";
    NSLog(@"%@ %@", myarr[0], myarr[1]);
    NSLog(@"%@", myarr);
    
//    [self myprintStr:@"Hello", @"My", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)myprintStr:(NSString *)str, ... NS_REQUIRES_NIL_TERMINATION {
    va_list arguments;
    va_start(arguments, str);
    NSString *currentStr = str;
    while (currentStr) {
        NSLog(@"%@ ", currentStr);
        currentStr = va_arg(arguments, NSString *);
    }
    va_end(arguments);
}

@end
