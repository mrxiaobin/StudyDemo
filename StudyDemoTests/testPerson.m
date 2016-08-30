//
//  testPerson.m
//  StudyDemo
//
//  Created by zhuxiaobin on 16/8/30.
//  Copyright © 2016年 zhuxiaobin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface testPerson : XCTestCase

@end

@implementation testPerson

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPerson {
    Person *person = [[Person alloc] init];
    
    XCTAssertNil(person[@"name"]);
    person[@"name"] = @"Mike";
    person[@"address"] = @"Wuhan";
    person[@"sex"] = @YES;
    person[@"age"] = @10;
    
    XCTAssertEqual(person[@"name"], @"Mike");
    XCTAssertEqual(person[@"address"], @"Wuhan");
    XCTAssertEqual([person[@"age"] integerValue], 10);
    XCTAssertNotEqualObjects(person[@"sex"], @NO);
    XCTAssertEqualObjects(person[@"age"], @10);
    
    person[@"name"] = @"Jim";
    XCTAssertNotEqual(person[@"name"], @"Mike");
    XCTAssertEqual(person[@"name"], @"Jim");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
