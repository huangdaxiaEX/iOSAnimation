//
//  UIViewController+DropAnimation.m
//  EditStyle
//
//  Created by huangdaxia on 16/1/21.
//  Copyright © 2016年 xiaorizi. All rights reserved.
//

#import "UIViewController+DropAnimation.h"

@implementation UIViewController (DropAnimation)

/**
 *  在UIViewController 的中心添加一个view
 *
 *  @param popView    添加的view
 *  @param duration   持续的时间
 *  @param completion 完成的block
 */
- (void)showView:(UIView *)popView duration:(NSTimeInterval)duration completion:(void(^)())completion {
    CGRect rect       = popView.frame;
    popView.center    = CGPointMake(self.view.center.x, - rect.size.height / 2 - 1);
    popView.transform = CGAffineTransformMakeRotation(- M_1_PI / 2);
    
    [UIView animateWithDuration:duration animations:^{
        popView.transform = CGAffineTransformMakeRotation(0);
        popView.frame     = rect;
    } completion:^(BOOL finished) {
        completion();
    }];
}

/**
 *  把添加的view消失
 *
 *  @param popView    添加的view
 *  @param duration   持续的时间
 *  @param completion 完成的block
 */
- (void)dismissView:(UIView *)popView duration:(NSTimeInterval)duration completion:(void(^)())completion {
    [UIView animateWithDuration:duration animations:^{
        popView.center    = CGPointMake(self.view.center.x, self.view.frame.size.height + popView.frame.size.height + 1);
        popView.transform = CGAffineTransformMakeRotation(M_1_PI / 2);
    } completion:^(BOOL finished) {
        completion();
    }];
}
@end
