//
//  iOSSP008Tests.m
//  iOSSP008Tests
//
//  Created by MobLab on 1/9/19.
//  Copyright © 2019 Chang. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface iOSSP008Tests : XCTestCase

@end

@implementation iOSSP008Tests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    NSString * nothing = @"I am a man";
    NSLog(@"%lu + %d", (unsigned long)[nothing length], (int)[nothing length]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
