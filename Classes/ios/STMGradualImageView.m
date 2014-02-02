//
//  STMGradualImageView.m
//  STMGradualImageView
//
//  Created by 松本 宗太郎 on 2014/02/03.
//  Copyright (c) 2014年 Soutaro Matsumoto. All rights reserved.
//

#import "STMGradualImageView.h"

@implementation STMGradualImageView

- (void)setImage:(UIImage *)image animated:(BOOL)animated
{
    if (animated) {
        [self setImage:image animatedInDuration:0.3f completion:nil];
    } else {
        [super setImage:image];
    }
}

- (void)setImage:(UIImage *)image animatedInDuration:(CGFloat)duration completion:(void (^)(BOOL))completion
{
    [UIView transitionWithView:self
                      duration:duration
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [super setImage:image];
                    } completion:completion];
}

- (void)setImage:(UIImage *)image
{
    [self setImage:image animated:YES];
}

@end
