//
//  AnimationTestView.h
//  animationTest
//
//  Created by koogfook on 16/8/30.
//  Copyright © 2016年 xkh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimationTestView : UIView

/**
 *  圆的宽度
 */
@property (nonatomic, assign) int circularWidth;
/**
 *  行与列的圆的个数
 */
@property (nonatomic, assign) int circularNumber;
/**
 *  圆的颜色
 */
@property (nonatomic, strong) UIColor *circularColor;
/**
 *  圆的填充色
 */
@property (nonatomic, strong) UIColor *circularFillColor;


@end
