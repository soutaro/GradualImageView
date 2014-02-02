//
//  STMGradualImageView.h
//  STMGradualImageView
//
//  Created by 松本 宗太郎 on 2014/02/03.
//  Copyright (c) 2014年 Soutaro Matsumoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STMGradualImageView : UIImageView

- (void)setImage:(UIImage *)image animated:(BOOL)animated;
- (void)setImage:(UIImage *)image animatedInDuration:(CGFloat)duration completion:(void (^)(BOOL))completion;

@end
