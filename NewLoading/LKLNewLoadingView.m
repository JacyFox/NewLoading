//
//  LKLNewLoadingView.m
//  NewLoading
//
//  Created by lakala on 15/7/22.
//  Copyright (c) 2015年 lakala. All rights reserved.
//

#import "LKLNewLoadingView.h"
#define viewH 50
@implementation LKLNewLoadingView

- (instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
        
        [self setUpRect];
    }
    return self;
}
- (void)setUpRect{

    self.frame =  CGRectMake(100, 200, viewH, viewH);
    
    // 添加旋转的imageView
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, viewH, viewH)];
    imageView.image = [UIImage imageNamed:@"Load"];
    [self addSubview:imageView];
    
    // 添加中间的Logo ImageView1
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, viewH, viewH)];
    imageView1.image = [UIImage imageNamed:@"Load_logo"];
    [self addSubview:imageView1];
    // 指定Z轴的话，就和UIView的动画一样绕中心旋转
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    // 设定动画选项
    animation.duration = 3; // 持续时间
    animation.repeatCount = HUGE_VALF; // 重复次数
    
    // 设定旋转角度
    animation.fromValue = [NSNumber numberWithFloat:0.0]; // 起始角度
    animation.toValue = [NSNumber numberWithFloat:4 * M_PI]; // 终止角度
    [imageView.layer addAnimation:animation forKey:nil];
}
@end
