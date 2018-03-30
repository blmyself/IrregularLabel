//
//  IrregularLabel.m
//  IrregularLabel
//
//  Created by 蔡强 on 2018/3/30.
//  Copyright © 2018年 kuaijiankang. All rights reserved.
//

#import "IrregularLabel.h"

@interface IrregularLabel ()

@property (nonatomic, strong) CAShapeLayer *maskLayer;

@end

@implementation IrregularLabel

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (self.maskLayer) {
        [self.maskLayer removeFromSuperlayer];
        self.maskLayer = nil;
    }
    
    //------- 初始化maskLayer -------//
    self.maskLayer = [CAShapeLayer layer];
    // 位置大小
    self.maskLayer.frame = self.bounds;
    
    
    //------- UIBezierPath -------//
    UIBezierPath *borderPath = [UIBezierPath bezierPath];
    // 设置path起点
    [borderPath moveToPoint:CGPointMake(0, 10)];
    // 左上角的圆角
    [borderPath addQuadCurveToPoint:CGPointMake(10, 0) controlPoint:CGPointMake(0, 0)];
    // 直线，到右上角
    [borderPath addLineToPoint:CGPointMake(self.bounds.size.width - 10, 0)];
    // 右上角的圆角
    [borderPath addQuadCurveToPoint:CGPointMake(self.bounds.size.width, 10) controlPoint:CGPointMake(self.bounds.size.width, 0)];
    // 直线，到右下角
    [borderPath addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height)];
    // 底部的小三角形
    [borderPath addLineToPoint:CGPointMake(self.bounds.size.width/2+5, self.bounds.size.height)];
    [borderPath addLineToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height-5)];
    [borderPath addLineToPoint:CGPointMake(self.bounds.size.width/2 - 5, self.bounds.size.height)];
    // 直线，到左下角
    [borderPath addLineToPoint:CGPointMake(0, self.bounds.size.height)];
    // 直线，回到起点
    [borderPath addLineToPoint:CGPointMake(0, 10)];
    
    
    // 将这个path赋值给layer的path
    self.maskLayer.path = borderPath.CGPath;
    
    // 设置遮罩
    [self.layer setMask:self.maskLayer];
}

@end
