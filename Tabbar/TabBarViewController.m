//
//  TabBarViewController.m
//  Tabbar
//
//  Created by 1 on 15/6/19.
//  Copyright (c) 2015年 1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TabBarViewController.h"

@interface TabBarViewController ()
@property (weak,nonatomic) UIButton *button1;
@property (weak,nonatomic) UIButton *button2;
@property (weak,nonatomic) UIButton *button3;
@property (weak,nonatomic) UIButton *button4;
@property (weak,nonatomic) UIButton *button5;
@property (weak,nonatomic) CAShapeLayer *btn1;
@property (weak,nonatomic) CAShapeLayer *btn2;
@property (weak,nonatomic) CAShapeLayer *btn3;
@property (weak,nonatomic) CAShapeLayer *btn4;
@property (weak,nonatomic) CAShapeLayer *btn5;
@property (weak,nonatomic) UIImageView *whitespace;

@end

@implementation TabBarViewController

- (void)AddTheTabBar {
    
    //1.tab bar add to main view
    UIImageView *tabbar =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"TabBG.png"]];
    tabbar.frame = CGRectMake(0,508,320,60);
    [self.view addSubview:tabbar];
    
    //2.白块 imageWithRenderingMode for color change
    UIImage *image = [[UIImage imageNamed:@"whitespace.png"]
                      imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    UIImageView *whitespace =[[UIImageView alloc] initWithImage:image];
    whitespace.tintColor = [UIColor colorWithRed: 0.448 green: 0.759 blue: 0.999 alpha: 1];
    whitespace.frame = CGRectMake(0,508,64,60);
    [self.view addSubview:whitespace];
    
    
    //＊＊＊＊全局赋值＊＊＊＊
    self.whitespace = whitespace;
    
    
    //3.btn1img  Bezier Drawing
    UIBezierPath* bezierPath1 = UIBezierPath.bezierPath;
    [bezierPath1 moveToPoint: CGPointMake(38.3, 539.7)];
    [bezierPath1 addLineToPoint: CGPointMake(32.73, 545.24)];
    [bezierPath1 addCurveToPoint: CGPointMake(32.02, 545.5) controlPoint1: CGPointMake(32.53, 545.43) controlPoint2: CGPointMake(32.27, 545.52)];
    [bezierPath1 addCurveToPoint: CGPointMake(31.3, 545.24) controlPoint1: CGPointMake(31.76, 545.52) controlPoint2: CGPointMake(31.5, 545.43)];
    [bezierPath1 addLineToPoint: CGPointMake(25.73, 539.7)];
    [bezierPath1 addCurveToPoint: CGPointMake(25.73, 538.37) controlPoint1: CGPointMake(25.36, 539.32) controlPoint2: CGPointMake(25.36, 538.73)];
    [bezierPath1 addCurveToPoint: CGPointMake(27.06, 538.37) controlPoint1: CGPointMake(26.1, 538) controlPoint2: CGPointMake(26.7, 538)];
    [bezierPath1 addLineToPoint: CGPointMake(31.06, 542.34)];
    [bezierPath1 addLineToPoint: CGPointMake(31.06, 533.32)];
    [bezierPath1 addCurveToPoint: CGPointMake(32, 532.38) controlPoint1: CGPointMake(31.06, 532.81) controlPoint2: CGPointMake(31.48, 532.38)];
    [bezierPath1 addCurveToPoint: CGPointMake(32.94, 533.32) controlPoint1: CGPointMake(32.52, 532.38) controlPoint2: CGPointMake(32.94, 532.81)];
    [bezierPath1 addLineToPoint: CGPointMake(32.94, 542.37)];
    [bezierPath1 addLineToPoint: CGPointMake(36.96, 538.37)];
    [bezierPath1 addCurveToPoint: CGPointMake(38.3, 538.37) controlPoint1: CGPointMake(37.33, 538) controlPoint2: CGPointMake(37.93, 538)];
    [bezierPath1 addCurveToPoint: CGPointMake(38.3, 539.7) controlPoint1: CGPointMake(38.67, 538.73) controlPoint2: CGPointMake(38.67, 539.32)];
    [bezierPath1 addLineToPoint: CGPointMake(38.3, 539.7)];
    [bezierPath1 closePath];
    [bezierPath1 moveToPoint: CGPointMake(38.63, 531.47)];
    [bezierPath1 addCurveToPoint: CGPointMake(31.06, 526.75) controlPoint1: CGPointMake(37.25, 528.67) controlPoint2: CGPointMake(34.38, 526.75)];
    [bezierPath1 addCurveToPoint: CGPointMake(22.66, 534.57) controlPoint1: CGPointMake(26.61, 526.75) controlPoint2: CGPointMake(22.97, 530.2)];
    [bezierPath1 addCurveToPoint: CGPointMake(17, 541.75) controlPoint1: CGPointMake(19.38, 535.51) controlPoint2: CGPointMake(17, 538.37)];
    [bezierPath1 addCurveToPoint: CGPointMake(24.5, 549.23) controlPoint1: CGPointMake(17, 545.74) controlPoint2: CGPointMake(20.32, 549)];
    [bezierPath1 addLineToPoint: CGPointMake(40.44, 549.25)];
    [bezierPath1 addCurveToPoint: CGPointMake(47, 540.34) controlPoint1: CGPointMake(43.66, 547.85) controlPoint2: CGPointMake(47, 543.95)];
    [bezierPath1 addCurveToPoint: CGPointMake(38.63, 531.47) controlPoint1: CGPointMake(47, 535.61) controlPoint2: CGPointMake(43.3, 531.74)];
    [bezierPath1 addLineToPoint: CGPointMake(38.63, 531.47)];
    [bezierPath1 closePath];
    bezierPath1.usesEvenOddFillRule = YES;
    
    [bezierPath1 stroke];
    
    //CAShapeLayer for rendering
    CAShapeLayer *btn1 = [CAShapeLayer layer];
    btn1.path = bezierPath1.CGPath;
    btn1.fillColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1].CGColor;
    [self.view.layer addSublayer:btn1];
    /*UIColor colorWithRed: 0.448 green: 0.759 blue: 0.999 alpha: 1].CGColor;
     [self.view.layer addSublayer:btn1];*/
    //btn without image
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(0, 508, 64, 60);
    [button1 addTarget:self action:@selector(btnclick1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    
    self.btn1 = btn1;
    
    //4.btn2img Beizier Drawing
    UIBezierPath* bezierPath2 = UIBezierPath.bezierPath;
    [bezierPath2 moveToPoint: CGPointMake(111, 534.48)];
    [bezierPath2 addLineToPoint: CGPointMake(100.65, 532.9)];
    [bezierPath2 addLineToPoint: CGPointMake(96, 523)];
    [bezierPath2 addLineToPoint: CGPointMake(91.35, 532.9)];
    [bezierPath2 addLineToPoint: CGPointMake(81, 534.48)];
    [bezierPath2 addLineToPoint: CGPointMake(88.49, 542.14)];
    [bezierPath2 addLineToPoint: CGPointMake(86.71, 553)];
    [bezierPath2 addLineToPoint: CGPointMake(96, 547.87)];
    [bezierPath2 addLineToPoint: CGPointMake(105.29, 553)];
    [bezierPath2 addLineToPoint: CGPointMake(103.51, 542.14)];
    [bezierPath2 addLineToPoint: CGPointMake(111, 534.48)];
    [bezierPath2 closePath];
    bezierPath2.usesEvenOddFillRule = YES;
    [bezierPath2 fill];
    
    
    CAShapeLayer *btn2 = [CAShapeLayer layer];
    btn2.path = bezierPath2.CGPath;
    btn2.fillColor = [UIColor colorWithRed: 0.997 green: 0.86 blue: 0.429 alpha: 1].CGColor;
    [self.view.layer addSublayer:btn2];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(64, 508, 64, 60);
    [button2 addTarget:self action:@selector(btnclick2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    self.btn2 = btn2;
    
    //5.btn3img Beizier Drawing
    
    UIBezierPath* bezierPath3 = UIBezierPath.bezierPath;
    [bezierPath3 moveToPoint: CGPointMake(169.52, 523)];
    [bezierPath3 addLineToPoint: CGPointMake(150.46, 523)];
    [bezierPath3 addLineToPoint: CGPointMake(145.01, 532.38)];
    [bezierPath3 addLineToPoint: CGPointMake(174.97, 532.38)];
    [bezierPath3 addLineToPoint: CGPointMake(169.52, 523)];
    [bezierPath3 addLineToPoint: CGPointMake(169.52, 523)];
    [bezierPath3 closePath];
    [bezierPath3 moveToPoint: CGPointMake(172.19, 545.5)];
    [bezierPath3 addLineToPoint: CGPointMake(147.82, 545.5)];
    [bezierPath3 addLineToPoint: CGPointMake(147.82, 539.87)];
    [bezierPath3 addLineToPoint: CGPointMake(149.66, 539.87)];
    [bezierPath3 addCurveToPoint: CGPointMake(152.94, 537.6) controlPoint1: CGPointMake(150.67, 539.87) controlPoint2: CGPointMake(152.26, 538.98)];
    [bezierPath3 addCurveToPoint: CGPointMake(156.46, 539.87) controlPoint1: CGPointMake(153.7, 538.94) controlPoint2: CGPointMake(155.11, 539.87)];
    [bezierPath3 addCurveToPoint: CGPointMake(159.99, 537.8) controlPoint1: CGPointMake(157.89, 539.87) controlPoint2: CGPointMake(159.46, 539.03)];
    [bezierPath3 addCurveToPoint: CGPointMake(163.45, 539.87) controlPoint1: CGPointMake(160.51, 539) controlPoint2: CGPointMake(162.05, 539.87)];
    [bezierPath3 addCurveToPoint: CGPointMake(167, 537.46) controlPoint1: CGPointMake(164.84, 539.87) controlPoint2: CGPointMake(166.27, 538.86)];
    [bezierPath3 addCurveToPoint: CGPointMake(170.31, 539.87) controlPoint1: CGPointMake(167.85, 538.87) controlPoint2: CGPointMake(169.06, 539.87)];
    [bezierPath3 addCurveToPoint: CGPointMake(172.19, 539.87) controlPoint1: CGPointMake(170.59, 539.87) controlPoint2: CGPointMake(171.95, 539.92)];
    [bezierPath3 addLineToPoint: CGPointMake(172.19, 545.5)];
    [bezierPath3 addLineToPoint: CGPointMake(172.19, 545.5)];
    [bezierPath3 closePath];
    [bezierPath3 moveToPoint: CGPointMake(145.03, 534.25)];
    [bezierPath3 addLineToPoint: CGPointMake(145.01, 534.25)];
    [bezierPath3 addCurveToPoint: CGPointMake(145.01, 536.13) controlPoint1: CGPointMake(144.99, 534.66) controlPoint2: CGPointMake(145.01, 535.59)];
    [bezierPath3 addCurveToPoint: CGPointMake(145.95, 538.94) controlPoint1: CGPointMake(145.01, 537.12) controlPoint2: CGPointMake(145.37, 538.21)];
    [bezierPath3 addLineToPoint: CGPointMake(145.97, 549.25)];
    [bezierPath3 addCurveToPoint: CGPointMake(149.84, 553) controlPoint1: CGPointMake(145.97, 551.32) controlPoint2: CGPointMake(147.7, 553)];
    [bezierPath3 addLineToPoint: CGPointMake(170.14, 553)];
    [bezierPath3 addCurveToPoint: CGPointMake(174.06, 549.25) controlPoint1: CGPointMake(172.27, 553) controlPoint2: CGPointMake(174.06, 551.32)];
    [bezierPath3 addLineToPoint: CGPointMake(174.06, 538.94)];
    [bezierPath3 addCurveToPoint: CGPointMake(175, 536.13) controlPoint1: CGPointMake(174.72, 538.17) controlPoint2: CGPointMake(175, 537.37)];
    [bezierPath3 addLineToPoint: CGPointMake(175, 534.25)];
    [bezierPath3 addLineToPoint: CGPointMake(145.03, 534.25)];
    [bezierPath3 addLineToPoint: CGPointMake(145.03, 534.25)];
    [bezierPath3 closePath];
    bezierPath3.usesEvenOddFillRule = YES;
    [bezierPath3 fill];
    
    
    CAShapeLayer *btn3 = [CAShapeLayer layer];
    btn3.path = bezierPath3.CGPath;
    btn3.fillColor = [UIColor colorWithRed: 0.99 green: 0.467 blue: 0.441 alpha: 1].CGColor;
    [self.view.layer addSublayer:btn3];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(128, 508, 64, 60);
    [button3 addTarget:self action:@selector(btnclick3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    self.btn3 = btn3;
    
    //6.btn4img Beizier Drawing
    UIBezierPath* bezierPath4 = UIBezierPath.bezierPath;
    [bezierPath4 moveToPoint: CGPointMake(224.92, 523)];
    [bezierPath4 addLineToPoint: CGPointMake(223.08, 523)];
    [bezierPath4 addCurveToPoint: CGPointMake(221.23, 524.88) controlPoint1: CGPointMake(222.06, 523) controlPoint2: CGPointMake(221.23, 523.84)];
    [bezierPath4 addLineToPoint: CGPointMake(221.23, 551.13)];
    [bezierPath4 addCurveToPoint: CGPointMake(223.08, 553) controlPoint1: CGPointMake(221.23, 552.16) controlPoint2: CGPointMake(222.06, 553)];
    [bezierPath4 addLineToPoint: CGPointMake(224.92, 553)];
    [bezierPath4 addCurveToPoint: CGPointMake(226.77, 551.13) controlPoint1: CGPointMake(225.94, 553) controlPoint2: CGPointMake(226.77, 552.16)];
    [bezierPath4 addLineToPoint: CGPointMake(226.77, 524.88)];
    [bezierPath4 addCurveToPoint: CGPointMake(224.92, 523) controlPoint1: CGPointMake(226.77, 523.84) controlPoint2: CGPointMake(225.94, 523)];
    [bezierPath4 addLineToPoint: CGPointMake(224.92, 523)];
    [bezierPath4 closePath];
    [bezierPath4 moveToPoint: CGPointMake(234.15, 538)];
    [bezierPath4 addLineToPoint: CGPointMake(232.31, 538)];
    [bezierPath4 addCurveToPoint: CGPointMake(230.46, 539.88) controlPoint1: CGPointMake(231.29, 538) controlPoint2: CGPointMake(230.46, 538.84)];
    [bezierPath4 addLineToPoint: CGPointMake(230.46, 551.13)];
    [bezierPath4 addCurveToPoint: CGPointMake(232.31, 553) controlPoint1: CGPointMake(230.46, 552.16) controlPoint2: CGPointMake(231.29, 553)];
    [bezierPath4 addLineToPoint: CGPointMake(234.15, 553)];
    [bezierPath4 addCurveToPoint: CGPointMake(236, 551.13) controlPoint1: CGPointMake(235.17, 553) controlPoint2: CGPointMake(236, 552.16)];
    [bezierPath4 addLineToPoint: CGPointMake(236, 539.88)];
    [bezierPath4 addCurveToPoint: CGPointMake(234.15, 538) controlPoint1: CGPointMake(236, 538.84) controlPoint2: CGPointMake(235.17, 538)];
    [bezierPath4 addLineToPoint: CGPointMake(234.15, 538)];
    [bezierPath4 closePath];
    [bezierPath4 moveToPoint: CGPointMake(215.69, 531.44)];
    [bezierPath4 addLineToPoint: CGPointMake(213.85, 531.44)];
    [bezierPath4 addCurveToPoint: CGPointMake(212, 533.31) controlPoint1: CGPointMake(212.83, 531.44) controlPoint2: CGPointMake(212, 532.28)];
    [bezierPath4 addLineToPoint: CGPointMake(212, 551.13)];
    [bezierPath4 addCurveToPoint: CGPointMake(213.85, 553) controlPoint1: CGPointMake(212, 552.16) controlPoint2: CGPointMake(212.83, 553)];
    [bezierPath4 addLineToPoint: CGPointMake(215.69, 553)];
    [bezierPath4 addCurveToPoint: CGPointMake(217.54, 551.13) controlPoint1: CGPointMake(216.71, 553) controlPoint2: CGPointMake(217.54, 552.16)];
    [bezierPath4 addLineToPoint: CGPointMake(217.54, 533.31)];
    [bezierPath4 addCurveToPoint: CGPointMake(215.69, 531.44) controlPoint1: CGPointMake(217.54, 532.28) controlPoint2: CGPointMake(216.71, 531.44)];
    [bezierPath4 addLineToPoint: CGPointMake(215.69, 531.44)];
    [bezierPath4 closePath];
    bezierPath4.usesEvenOddFillRule = YES;
    [bezierPath4 fill];
    
    
    
    CAShapeLayer *btn4 = [CAShapeLayer layer];
    btn4.path = bezierPath4.CGPath;
    btn4.fillColor = [UIColor colorWithRed: 0.495 green: 0.481 blue: 0.660 alpha: 1.000].CGColor;
    [self.view.layer addSublayer:btn4];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    button4.frame = CGRectMake(192, 508, 64, 60);
    [button4 addTarget:self action:@selector(btnclick4) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];
    
    self.btn4 = btn4;
    
    //7.btn5img Beizier Drawing
    
    UIBezierPath* bezierPath5 = UIBezierPath.bezierPath;
    [bezierPath5 moveToPoint: CGPointMake(283.31, 529.19)];
    [bezierPath5 addCurveToPoint: CGPointMake(281.06, 531.44) controlPoint1: CGPointMake(282.07, 529.19) controlPoint2: CGPointMake(281.06, 530.2)];
    [bezierPath5 addCurveToPoint: CGPointMake(283.31, 533.69) controlPoint1: CGPointMake(281.06, 532.68) controlPoint2: CGPointMake(282.07, 533.69)];
    [bezierPath5 addCurveToPoint: CGPointMake(285.56, 531.44) controlPoint1: CGPointMake(284.56, 533.69) controlPoint2: CGPointMake(285.56, 532.68)];
    [bezierPath5 addCurveToPoint: CGPointMake(283.31, 529.19) controlPoint1: CGPointMake(285.56, 530.2) controlPoint2: CGPointMake(284.56, 529.19)];
    [bezierPath5 addLineToPoint: CGPointMake(283.31, 529.19)];
    [bezierPath5 closePath];
    [bezierPath5 moveToPoint: CGPointMake(291.75, 536.69)];
    [bezierPath5 addCurveToPoint: CGPointMake(289.5, 538.94) controlPoint1: CGPointMake(290.51, 536.69) controlPoint2: CGPointMake(289.5, 537.7)];
    [bezierPath5 addCurveToPoint: CGPointMake(291.75, 541.19) controlPoint1: CGPointMake(289.5, 540.18) controlPoint2: CGPointMake(290.51, 541.19)];
    [bezierPath5 addCurveToPoint: CGPointMake(294, 538.94) controlPoint1: CGPointMake(292.99, 541.19) controlPoint2: CGPointMake(294, 540.18)];
    [bezierPath5 addCurveToPoint: CGPointMake(291.75, 536.69) controlPoint1: CGPointMake(294, 537.7) controlPoint2: CGPointMake(292.99, 536.69)];
    [bezierPath5 addLineToPoint: CGPointMake(291.75, 536.69)];
    [bezierPath5 closePath];
    [bezierPath5 moveToPoint: CGPointMake(297.38, 532.38)];
    [bezierPath5 addLineToPoint: CGPointMake(286.93, 532.38)];
    [bezierPath5 addCurveToPoint: CGPointMake(283.31, 535.19) controlPoint1: CGPointMake(286.51, 533.99) controlPoint2: CGPointMake(285.06, 535.19)];
    [bezierPath5 addCurveToPoint: CGPointMake(279.7, 532.38) controlPoint1: CGPointMake(281.57, 535.19) controlPoint2: CGPointMake(280.11, 533.99)];
    [bezierPath5 addLineToPoint: CGPointMake(278.62, 532.38)];
    [bezierPath5 addCurveToPoint: CGPointMake(277.69, 531.44) controlPoint1: CGPointMake(278.11, 532.38) controlPoint2: CGPointMake(277.69, 531.96)];
    [bezierPath5 addCurveToPoint: CGPointMake(278.62, 530.5) controlPoint1: CGPointMake(277.69, 530.92) controlPoint2: CGPointMake(278.11, 530.5)];
    [bezierPath5 addLineToPoint: CGPointMake(279.7, 530.5)];
    [bezierPath5 addCurveToPoint: CGPointMake(283.31, 527.69) controlPoint1: CGPointMake(280.11, 528.88) controlPoint2: CGPointMake(281.57, 527.69)];
    [bezierPath5 addCurveToPoint: CGPointMake(286.93, 530.5) controlPoint1: CGPointMake(285.06, 527.69) controlPoint2: CGPointMake(286.51, 528.88)];
    [bezierPath5 addLineToPoint: CGPointMake(297.38, 530.5)];
    [bezierPath5 addCurveToPoint: CGPointMake(298.31, 531.44) controlPoint1: CGPointMake(297.89, 530.5) controlPoint2: CGPointMake(298.31, 530.92)];
    [bezierPath5 addCurveToPoint: CGPointMake(297.38, 532.38) controlPoint1: CGPointMake(298.31, 531.96) controlPoint2: CGPointMake(297.89, 532.38)];
    [bezierPath5 addLineToPoint: CGPointMake(297.38, 532.38)];
    [bezierPath5 closePath];
    [bezierPath5 moveToPoint: CGPointMake(297.38, 539.88)];
    [bezierPath5 addLineToPoint: CGPointMake(295.37, 539.88)];
    [bezierPath5 addCurveToPoint: CGPointMake(291.75, 542.69) controlPoint1: CGPointMake(294.95, 541.49) controlPoint2: CGPointMake(293.5, 542.69)];
    [bezierPath5 addCurveToPoint: CGPointMake(288.13, 539.88) controlPoint1: CGPointMake(290, 542.69) controlPoint2: CGPointMake(288.55, 541.49)];
    [bezierPath5 addLineToPoint: CGPointMake(278.62, 539.88)];
    [bezierPath5 addCurveToPoint: CGPointMake(277.69, 538.94) controlPoint1: CGPointMake(278.11, 539.88) controlPoint2: CGPointMake(277.69, 539.46)];
    [bezierPath5 addCurveToPoint: CGPointMake(278.62, 538) controlPoint1: CGPointMake(277.69, 538.42) controlPoint2: CGPointMake(278.11, 538)];
    [bezierPath5 addLineToPoint: CGPointMake(288.13, 538)];
    [bezierPath5 addCurveToPoint: CGPointMake(291.75, 535.19) controlPoint1: CGPointMake(288.55, 536.38) controlPoint2: CGPointMake(290, 535.19)];
    [bezierPath5 addCurveToPoint: CGPointMake(295.37, 538) controlPoint1: CGPointMake(293.5, 535.19) controlPoint2: CGPointMake(294.95, 536.38)];
    [bezierPath5 addLineToPoint: CGPointMake(297.38, 538)];
    [bezierPath5 addCurveToPoint: CGPointMake(298.31, 538.94) controlPoint1: CGPointMake(297.89, 538) controlPoint2: CGPointMake(298.31, 538.42)];
    [bezierPath5 addCurveToPoint: CGPointMake(297.38, 539.88) controlPoint1: CGPointMake(298.31, 539.46) controlPoint2: CGPointMake(297.89, 539.88)];
    [bezierPath5 addLineToPoint: CGPointMake(297.38, 539.88)];
    [bezierPath5 closePath];
    [bezierPath5 moveToPoint: CGPointMake(297.38, 547.38)];
    [bezierPath5 addLineToPoint: CGPointMake(286.93, 547.38)];
    [bezierPath5 addCurveToPoint: CGPointMake(283.31, 550.19) controlPoint1: CGPointMake(286.51, 548.99) controlPoint2: CGPointMake(285.06, 550.19)];
    [bezierPath5 addCurveToPoint: CGPointMake(279.7, 547.38) controlPoint1: CGPointMake(281.57, 550.19) controlPoint2: CGPointMake(280.11, 548.99)];
    [bezierPath5 addLineToPoint: CGPointMake(278.62, 547.38)];
    [bezierPath5 addCurveToPoint: CGPointMake(277.69, 546.44) controlPoint1: CGPointMake(278.11, 547.38) controlPoint2: CGPointMake(277.69, 546.96)];
    [bezierPath5 addCurveToPoint: CGPointMake(278.62, 545.5) controlPoint1: CGPointMake(277.69, 545.92) controlPoint2: CGPointMake(278.11, 545.5)];
    [bezierPath5 addLineToPoint: CGPointMake(279.7, 545.5)];
    [bezierPath5 addCurveToPoint: CGPointMake(283.31, 542.69) controlPoint1: CGPointMake(280.11, 543.89) controlPoint2: CGPointMake(281.57, 542.69)];
    [bezierPath5 addCurveToPoint: CGPointMake(286.93, 545.5) controlPoint1: CGPointMake(285.06, 542.69) controlPoint2: CGPointMake(286.51, 543.89)];
    [bezierPath5 addLineToPoint: CGPointMake(297.38, 545.5)];
    [bezierPath5 addCurveToPoint: CGPointMake(298.31, 546.44) controlPoint1: CGPointMake(297.89, 545.5) controlPoint2: CGPointMake(298.31, 545.92)];
    [bezierPath5 addCurveToPoint: CGPointMake(297.38, 547.38) controlPoint1: CGPointMake(298.31, 546.96) controlPoint2: CGPointMake(297.89, 547.38)];
    [bezierPath5 addLineToPoint: CGPointMake(297.38, 547.38)];
    [bezierPath5 closePath];
    [bezierPath5 moveToPoint: CGPointMake(299.25, 523)];
    [bezierPath5 addLineToPoint: CGPointMake(276.75, 523)];
    [bezierPath5 addCurveToPoint: CGPointMake(273, 526.75) controlPoint1: CGPointMake(274.68, 523) controlPoint2: CGPointMake(273, 524.68)];
    [bezierPath5 addLineToPoint: CGPointMake(273, 549.25)];
    [bezierPath5 addCurveToPoint: CGPointMake(276.75, 553) controlPoint1: CGPointMake(273, 551.32) controlPoint2: CGPointMake(274.68, 553)];
    [bezierPath5 addLineToPoint: CGPointMake(299.25, 553)];
    [bezierPath5 addCurveToPoint: CGPointMake(303, 549.25) controlPoint1: CGPointMake(301.32, 553) controlPoint2: CGPointMake(303, 551.32)];
    [bezierPath5 addLineToPoint: CGPointMake(303, 526.75)];
    [bezierPath5 addCurveToPoint: CGPointMake(299.25, 523) controlPoint1: CGPointMake(303, 524.68) controlPoint2: CGPointMake(301.32, 523)];
    [bezierPath5 addLineToPoint: CGPointMake(299.25, 523)];
    [bezierPath5 closePath];
    [bezierPath5 moveToPoint: CGPointMake(283.31, 544.19)];
    [bezierPath5 addCurveToPoint: CGPointMake(281.06, 546.44) controlPoint1: CGPointMake(282.07, 544.19) controlPoint2: CGPointMake(281.06, 545.2)];
    [bezierPath5 addCurveToPoint: CGPointMake(283.31, 548.69) controlPoint1: CGPointMake(281.06, 547.68) controlPoint2: CGPointMake(282.07, 548.69)];
    [bezierPath5 addCurveToPoint: CGPointMake(285.56, 546.44) controlPoint1: CGPointMake(284.56, 548.69) controlPoint2: CGPointMake(285.56, 547.68)];
    [bezierPath5 addCurveToPoint: CGPointMake(283.31, 544.19) controlPoint1: CGPointMake(285.56, 545.2) controlPoint2: CGPointMake(284.56, 544.19)];
    [bezierPath5 addLineToPoint: CGPointMake(283.31, 544.19)];
    [bezierPath5 closePath];
    bezierPath5.usesEvenOddFillRule = YES;
    [bezierPath5 fill];
    
    
    
    CAShapeLayer *btn5 = [CAShapeLayer layer];
    btn5.path = bezierPath5.CGPath;
    btn5.fillColor = [UIColor colorWithRed: 0.993 green: 0.657 blue: 0.424 alpha: 1].CGColor;
    [self.view.layer addSublayer:btn5];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    button5.frame = CGRectMake(256, 508, 64, 60);
    [button5 addTarget:self action:@selector(btnclick5) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button5];
    
    self.btn5 = btn5;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.delete the tabbar
    [self.tabBar removeFromSuperview];
    [self AddTheTabBar];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)btnclick1{
    NSLog(@"1");
    self.selectedIndex = 0;
    
    
    [UIView animateWithDuration:0.4
                          delay:0.0
         usingSpringWithDamping:0.7
          initialSpringVelocity:10.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         _btn1.fillColor = [[UIColor colorWithRed:1 green:1 blue:1 alpha:1]CGColor];
                         _btn2.fillColor = [[UIColor colorWithRed: 0.997 green: 0.86 blue: 0.429 alpha: 1]CGColor];
                         _btn3.fillColor = [[UIColor colorWithRed: 0.99 green: 0.467 blue: 0.441 alpha: 1] CGColor];
                         _btn4.fillColor = [[UIColor colorWithRed: 0.495 green: 0.481 blue: 0.660 alpha: 1.000]CGColor];
                         _btn5.fillColor = [[UIColor colorWithRed: 0.993 green: 0.657 blue: 0.424 alpha: 1]CGColor];
                         _whitespace.frame = CGRectMake(0,508,64,60);
                         _whitespace.tintColor = [UIColor colorWithRed: 0.448 green: 0.759 blue: 0.999 alpha: 1];
                         
                     } completion:^(BOOL finished) {
                     }];
    
    
    
    
    
}
- (void)btnclick2{
    NSLog(@"2");
    self.selectedIndex = 1;

    [UIView animateWithDuration:0.4
                          delay:0.0
         usingSpringWithDamping:0.7
          initialSpringVelocity:10.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         _btn1.fillColor = [[UIColor colorWithRed: 0.448 green: 0.759 blue: 0.999 alpha: 1]CGColor];
                         _btn2.fillColor = [[UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1]CGColor];
                         _btn3.fillColor = [[UIColor colorWithRed: 0.99 green: 0.467 blue: 0.441 alpha: 1]CGColor];
                         _btn4.fillColor = [[UIColor colorWithRed: 0.495 green: 0.481 blue: 0.660 alpha: 1.000]CGColor];
                         _btn5.fillColor = [[UIColor colorWithRed: 0.993 green: 0.657 blue: 0.424 alpha: 1]CGColor];
                         _whitespace.frame = CGRectMake(64,508,64,60);
                         _whitespace.tintColor = [UIColor colorWithRed: 0.997 green: 0.86 blue: 0.429 alpha: 1];
                         
                     } completion:^(BOOL finished) {
                     }];
}
- (void)btnclick3{
    NSLog(@"3");
    self.selectedIndex = 2;
    
    
    [UIView animateWithDuration:0.4 // 动画时长
                          delay:0.0 // 动画延迟
         usingSpringWithDamping:0.7 // 类似弹簧振动效果 0~1
          initialSpringVelocity:10.0 // 初始速度
                        options:UIViewAnimationOptionCurveEaseInOut // 动画过渡效果
                     animations:^{
                         _btn1.fillColor = [[UIColor  colorWithRed: 0.448 green: 0.759 blue: 0.999 alpha: 1]CGColor];
                         _btn2.fillColor = [[UIColor colorWithRed: 0.997 green: 0.86 blue: 0.429 alpha: 1]CGColor];
                         _btn3.fillColor = [[UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1]CGColor];
                         _btn4.fillColor = [[UIColor colorWithRed: 0.495 green: 0.481 blue: 0.660 alpha: 1.000]CGColor];
                         _btn5.fillColor = [[UIColor colorWithRed: 0.993 green: 0.657 blue: 0.424 alpha: 1]CGColor];
                         _whitespace.frame = CGRectMake(128,508,64,60);
                         _whitespace.tintColor = [UIColor colorWithRed: 0.99 green: 0.467 blue: 0.441 alpha: 1];
                         
                     } completion:^(BOOL finished) {
                     }];
}
- (void)btnclick4{
    NSLog(@"4");
   self.selectedIndex = 3;
    
    [UIView animateWithDuration:0.4 // 动画时长
                          delay:0.0 // 动画延迟
         usingSpringWithDamping:0.7 // 类似弹簧振动效果 0~1
          initialSpringVelocity:10.0 // 初始速度
                        options:UIViewAnimationOptionCurveEaseInOut // 动画过渡效果
                     animations:^{
                         _btn1.fillColor = [[UIColor colorWithRed: 0.448 green: 0.759 blue: 0.999 alpha: 1]CGColor];
                         _btn2.fillColor = [[UIColor colorWithRed: 0.997 green: 0.86 blue: 0.429 alpha: 1]CGColor];
                         _btn3.fillColor = [[UIColor colorWithRed: 0.99 green: 0.467 blue: 0.441 alpha: 1] CGColor];
                         _btn4.fillColor = [[UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1]CGColor];
                         _btn5.fillColor = [[UIColor colorWithRed: 0.993 green: 0.657 blue: 0.424 alpha: 1]CGColor];
                         _whitespace.frame = CGRectMake(192,508,64,60);
                         _whitespace.tintColor = [UIColor colorWithRed: 0.495 green: 0.481 blue: 0.660 alpha: 1.000];
                         
                     } completion:^(BOOL finished) {
                     }];
}
- (void)btnclick5{
    NSLog(@"5");
    self.selectedIndex = 4;
    
    [UIView animateWithDuration:0.4 // 动画时长
                          delay:0.0 // 动画延迟
         usingSpringWithDamping:0.7 // 类似弹簧振动效果 0~1
          initialSpringVelocity:10.0 // 初始速度
                        options:UIViewAnimationOptionCurveEaseInOut // 动画过渡效果
                     animations:^{
                         _btn1.fillColor = [[UIColor colorWithRed: 0.448 green: 0.759 blue: 0.999 alpha: 1]CGColor];
                         _btn2.fillColor = [[UIColor colorWithRed: 0.997 green: 0.86 blue: 0.429 alpha: 1]CGColor];
                         _btn3.fillColor = [[UIColor colorWithRed: 0.99 green: 0.467 blue: 0.441 alpha: 1]CGColor];
                         _btn4.fillColor = [[UIColor colorWithRed: 0.495 green: 0.481 blue: 0.660 alpha: 1.000]CGColor];
                         _btn5.fillColor = [[UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1]CGColor];
                         _whitespace.frame = CGRectMake(256,508,64,60);
                         _whitespace.tintColor = [UIColor colorWithRed: 0.993 green: 0.657 blue: 0.424 alpha: 1];
                         
                     } completion:^(BOOL finished) {
                     }];
}




@end