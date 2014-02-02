//
//  STMViewController.m
//  STMGradualImageView
//
//  Created by 松本 宗太郎 on 2014/02/03.
//  Copyright (c) 2014年 Soutaro Matsumoto. All rights reserved.
//

#import "STMViewController.h"
#import "STMGradualImageView.h"

@interface STMViewController ()

@property (weak, nonatomic) IBOutlet STMGradualImageView *gradualImageView;

@end

@implementation STMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)image1ButtonTap:(id)sender
{
    self.gradualImageView.image = [UIImage imageNamed:@"Image1.png"];
}

- (IBAction)image2ButtonTap:(id)sender
{
    self.gradualImageView.image = [UIImage imageNamed:@"Image2.png"];
}

@end
