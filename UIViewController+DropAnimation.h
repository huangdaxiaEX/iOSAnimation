//
//  UIViewController+DropAnimation.h
//  EditStyle
//
//  Created by huangdaxia on 16/1/21.
//  Copyright © 2016年 xiaorizi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIViewController (DropAnimation)

/**
 *  在UIViewController 的中心添加一个view
 *
 *  @param popView    添加的view
 *  @param duration   持续的时间
 *  @param completion 完成的block
 */
- (void)showView:(UIView *)popView duration:(NSTimeInterval)duration completion:(void(^)())completion;

/**
 *  把添加的view消失
 *
 *  @param popView    添加的view
 *  @param duration   持续的时间
 *  @param completion 完成的block
 */
- (void)dismissView:(UIView *)popView duration:(NSTimeInterval)duration completion:(void(^)())completion;
@end
