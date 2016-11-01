//
//  AnimationTestView.m
//  animationTest
//
//  Created by koogfook on 16/8/30.
//  Copyright © 2016年 xkh. All rights reserved.
//

#import "AnimationTestView.h"

@implementation AnimationTestView

- (instancetype)init
{
    if (self = [super init])
    {
        _circularWidth = 2;
        _circularNumber = 2;
        _circularColor = [UIColor redColor];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        _circularWidth = 2;
        _circularNumber = 2;
        _circularColor = [UIColor redColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code

    CGFloat width = (self.bounds.size.width + _circularWidth * (_circularNumber - 1)) / _circularNumber;
    
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetRGBStrokeColor(context, 0.6, 0.9, 0, 1.0);
    CGContextSetLineWidth(context, _circularWidth);
    
    for (int i = 0; i < _circularNumber * _circularNumber; i++)
    {
        //椭圆
        CGRect aRect= CGRectMake((width - _circularWidth) * (i % _circularNumber) +_circularWidth / 2, (width - _circularWidth) * (i / _circularNumber) + _circularWidth / 2, width - _circularWidth, width - _circularWidth);
        CGContextAddEllipseInRect(context, aRect); //椭圆
    }
    
    CGContextDrawPath(context, kCGPathStroke);
    
   
    
}


@end
