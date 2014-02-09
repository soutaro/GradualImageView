//
//  STMGradualImageViewTests.m
//  STMGradualImageViewTests
//
//  Created by 松本 宗太郎 on 2014/02/03.
//  Copyright (c) 2014年 Soutaro Matsumoto. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "STMGradualImageView.h"

@interface STMGradualImageViewTests : XCTestCase

@end

@implementation STMGradualImageViewTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testImagePropertyCanBeUpdated
{
    STMGradualImageView *view = [[STMGradualImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    
    assert(view.image == nil);
    
    UIImage *image = [[UIImage alloc] init];
    view.image = image;
    
    assert(view.image == image);
}

- (void)testCallingSettersDoesNotFail
{
    STMGradualImageView *view = [[STMGradualImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    
    UIImage *image = [UIImage new];
    
    [view setImage:image];
    [view setImage:image animated:YES];
    [view setImage:image animated:NO];
    [view setImage:image animatedInDuration:0.5 completion:nil];
}

@end
