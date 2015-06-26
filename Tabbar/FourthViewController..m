//
//  FourthViewController.m
//  Tabbar
//
//  Created by 1 on 15/6/18.
//  Copyright (c) 2015年 1. All rights reserved.
//

#import "FourthViewController.h"
#import <pop/POP.h>

@interface FourthViewController ()
@property (weak, nonatomic) IBOutlet UITabBarItem *tabstatus;
@property (strong, nonatomic) IBOutlet UIImageView *card1;
@property (strong, nonatomic) IBOutlet UIImageView *card2;
@property (strong, nonatomic) CAShapeLayer *line1;
@property (strong, nonatomic) CAShapeLayer *line2;
@property (strong, nonatomic) CAShapeLayer *line3;
@property (strong, nonatomic) UIImageView *text1;
@property (strong, nonatomic) UIImageView *text2;
@property (strong, nonatomic) UIImageView *text3;


@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //init text 1 2 3
    UIImageView * text1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"t1"]];
    text1.frame = CGRectMake(68,108,61,16);
    [self.card2 addSubview:text1];
    self.text1= text1;
    
    UIImageView * text2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"t2"]];
    text2.frame = CGRectMake(68,139,52,14);
    [self.card2 addSubview:text2];
    self.text2= text2;
    
    UIImageView * text3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"t3"]];
    text3.frame = CGRectMake(68,169,69,15);
    [self.card2 addSubview:text3];
    self.text3= text3;
    
    _text1.alpha = 0;
    _text2.alpha = 0;
    _text3.alpha = 0;
    
    //set text pop animation
    POPBasicAnimation *T1A = [POPBasicAnimation animation];
    T1A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
    T1A.beginTime = CACurrentMediaTime() + 0.9;
    T1A.fromValue= @(0);
    T1A.toValue= @(1);
    [_text1 pop_addAnimation:T1A forKey:@"T1A"];
    
    POPBasicAnimation *T2A = [POPBasicAnimation animation];
    T2A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
    T2A.beginTime = CACurrentMediaTime() + 1.1;
    T2A.fromValue= @(0);
    T2A.toValue= @(1);
    [_text2 pop_addAnimation:T2A forKey:@"T2A"];
    
    POPBasicAnimation *T3A = [POPBasicAnimation animation];
    T3A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
    T3A.beginTime = CACurrentMediaTime() + 1.3;
    T3A.fromValue= @(0);
    T3A.toValue= @(1);
    [_text3 pop_addAnimation:T3A forKey:@"T3A"];
    
    CGPoint t1c=_text1.center;
    _text1.center=t1c;
    POPSpringAnimation * T1X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    T1X.beginTime = CACurrentMediaTime() + 0.8;
    T1X.toValue = @(t1c. x+= 100);
    T1X.springBounciness = 6;
    T1X.springSpeed = 10;
    [_text1 pop_addAnimation:T1X forKey:@"T1X"];
    
    CGPoint t2c=_text2.center;
    _text2.center=t2c;
    POPSpringAnimation * T2X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    T2X.beginTime = CACurrentMediaTime() + 1.0;
    T2X.toValue = @(t2c. x+= 100);
    T2X.springBounciness = 6;
    T2X.springSpeed = 10;
    [_text2 pop_addAnimation:T2X forKey:@"T2X"];
    
    CGPoint t3c=_text3.center;
    _text3.center=t3c;
    POPSpringAnimation * T3X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    T3X.beginTime = CACurrentMediaTime() + 1.2;
    T3X.toValue = @(t3c. x+= 100);
    T3X.springBounciness = 6;
    T3X.springSpeed = 10;
    [_text3 pop_addAnimation:T3X forKey:@"T3X"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    
    //init
    _card1.alpha = 0;
    _card2.alpha = 0;
  
    //card animation
    CGPoint card1c=_card1.center;
    _card1.center=card1c;
    POPSpringAnimation * C1Y = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    C1Y.beginTime = CACurrentMediaTime() + 0.2;
    C1Y.toValue = @(card1c. y-= 200);
    C1Y.springBounciness = 4;
    C1Y.springSpeed = 8;
    [_card1 pop_addAnimation:C1Y forKey:@"Card1Y"];
    
    C1Y.completionBlock =^(POPAnimation *anim, BOOL finished){
    
        
        //line 1 bezierpath
        
        
        UIBezierPath* bezier1Path = UIBezierPath.bezierPath;
        [bezier1Path moveToPoint: CGPointMake(50.68, 75.86)];
        [bezier1Path addLineToPoint: CGPointMake(86.61, 88.11)];
        [bezier1Path addLineToPoint: CGPointMake(129.68, 96.88)];
        [bezier1Path addLineToPoint: CGPointMake(172.45, 85.46)];
        [bezier1Path addLineToPoint: CGPointMake(222.67, 102)];
        [bezier1Path addLineToPoint: CGPointMake(256.5, 82.1)];
        bezier1Path.lineWidth = 2;
        [bezier1Path stroke];
        
        CAShapeLayer *line1=[CAShapeLayer layer];
        line1.path=bezier1Path.CGPath;
        line1.fillColor=[UIColor clearColor].CGColor;
        line1.strokeColor=[[UIColor colorWithRed: 0.868 green: 0.281 blue: 0.276 alpha: 1]CGColor];
        [self.card1.layer addSublayer:line1];
        
        
        CABasicAnimation *animation1=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        animation1.beginTime =CACurrentMediaTime() + 0;
        animation1.duration=0.8;
        animation1.removedOnCompletion=NO;
        animation1.autoreverses = NO;
        animation1.fillMode=kCAFillModeBoth;
        animation1.fromValue=@(0);
        animation1.toValue=@(1);
        animation1.timingFunction=[CAMediaTimingFunction  functionWithControlPoints:0.5 : 0.29 :0.2 :0.83];
        [line1 addAnimation:animation1 forKey:@"line1"];
        
        
        
        //line 2 bezierpath
        
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(50.68, 137.32)];
        [bezier2Path addLineToPoint: CGPointMake(84.73, 117.93)];
        [bezier2Path addLineToPoint: CGPointMake(130.93, 144.51)];
        [bezier2Path addLineToPoint: CGPointMake(173.72, 127.7)];
        [bezier2Path addLineToPoint: CGPointMake(221.9, 132.29)];
        [bezier2Path addLineToPoint: CGPointMake(256.5, 117.93)];
        bezier2Path.lineWidth = 2;
        [bezier2Path stroke];
        
        CAShapeLayer *line2=[CAShapeLayer layer];
        line2.path=bezier2Path.CGPath;
        line2.fillColor=[UIColor clearColor].CGColor;
        line2.strokeColor=[[UIColor colorWithRed: 0.315 green: 0.773 blue: 0.327 alpha: 1]CGColor];
        [self.card1.layer addSublayer:line2];
        
        
        CABasicAnimation *animation2=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        animation2.beginTime =CACurrentMediaTime() + 0.2;
        animation2.duration=0.8;
        animation2.removedOnCompletion=NO;
        animation2.autoreverses = NO;
        animation2.fillMode=kCAFillModeBoth;
        animation2.fromValue=@(0);
        animation2.toValue=@(1);
        animation2.timingFunction=[CAMediaTimingFunction  functionWithControlPoints:0.5 : 0.29 :0.2 :0.83];
        [line2 addAnimation:animation2 forKey:@"line2"];
        
        //line 3 bezierpath
        
        UIBezierPath* bezier3Path = UIBezierPath.bezierPath;
        [bezier3Path moveToPoint: CGPointMake(50.78, 172.54)];
        [bezier3Path addLineToPoint: CGPointMake(84.69, 162.76)];
        [bezier3Path addLineToPoint: CGPointMake(130.3, 167.89)];
        [bezier3Path addLineToPoint: CGPointMake(174.57, 142.43)];
        [bezier3Path addLineToPoint: CGPointMake(222.79, 167.89)];
        [bezier3Path addLineToPoint: CGPointMake(256.5, 176.24)];
        bezier3Path.lineWidth = 2;
        [bezier3Path stroke];
        
        CAShapeLayer *line3=[CAShapeLayer layer];
        line3.path=bezier3Path.CGPath;
        line3.fillColor=[UIColor clearColor].CGColor;
        line3.strokeColor=[[UIColor colorWithRed: 0.555 green: 0.402 blue: 0.801 alpha: 1]CGColor];
        [self.card1.layer addSublayer:line3];
        
        
        CABasicAnimation *animation3=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        animation3.beginTime =CACurrentMediaTime() + 0.4;
        animation3.duration=0.8;
        animation3.removedOnCompletion=NO;
        animation3.autoreverses = NO;
        animation3.fillMode=kCAFillModeBoth;
        animation3.fromValue=@(0);
        animation3.toValue=@(1);
        animation3.timingFunction=[CAMediaTimingFunction  functionWithControlPoints:0.5 : 0.29 :0.2 :0.83];
        [line3 addAnimation:animation3 forKey:@"line3"];
        };
    
    CGPoint card2c=_card2.center;
    _card2.center=card2c;
    POPSpringAnimation * C2Y = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    C2Y.beginTime = CACurrentMediaTime() + 0.3;
    C2Y.toValue = @(card2c. y-= 200);
    C2Y.springBounciness = 4;
    C2Y.springSpeed = 8;
    [_card2 pop_addAnimation:C2Y forKey:@"Card2Y"];
    
    C2Y.completionBlock =^(POPAnimation *anim, BOOL finished){
    
        
    //// Bezier 1 Drawing
    UIBezierPath* RingPath1 = UIBezierPath.bezierPath;
        [RingPath1 moveToPoint: CGPointMake(114.58, 113.91)];
        [RingPath1 addCurveToPoint: CGPointMake(84.5, 101) controlPoint1: CGPointMake(107.02, 105.96) controlPoint2: CGPointMake(96.34, 101)];
        [RingPath1 addCurveToPoint: CGPointMake(43, 142.5) controlPoint1: CGPointMake(61.58, 101) controlPoint2: CGPointMake(43, 119.58)];
    [RingPath1 stroke];
    
    CAShapeLayer *ring1=[CAShapeLayer layer];
    ring1.lineWidth = 15;
    ring1.path=RingPath1.CGPath;
    ring1.fillColor=[UIColor clearColor].CGColor;
    ring1.strokeColor=[[UIColor colorWithRed: 0.388 green: 0.748 blue: 0.741 alpha: 1]CGColor];
    [self.card2.layer addSublayer:ring1];
                       
    //// Bezier 2 Drawing
    UIBezierPath* RingPath2 = UIBezierPath.bezierPath;
        [RingPath2 moveToPoint: CGPointMake(84.5, 184)];
        [RingPath2 addCurveToPoint: CGPointMake(126, 142.5) controlPoint1: CGPointMake(107.42, 184) controlPoint2: CGPointMake(126, 165.42)];
        [RingPath2 addCurveToPoint: CGPointMake(114.57, 113.9) controlPoint1: CGPointMake(126, 131.41) controlPoint2: CGPointMake(121.65, 121.34)];

    [RingPath2 stroke];
                       
    CAShapeLayer *ring2=[CAShapeLayer layer];
    ring2.lineWidth = 15;
    ring2.path=RingPath2.CGPath;
    ring2.fillColor=[UIColor clearColor].CGColor;
    ring2.strokeColor=[[UIColor colorWithRed: 0.722 green: 0.807 blue: 0.266 alpha: 1]CGColor];
    [self.card2.layer addSublayer:ring2];
                                          
                                          
    //// Bezier 3 Drawing
    UIBezierPath* RingPath3 = UIBezierPath.bezierPath;
        [RingPath3 moveToPoint: CGPointMake(43, 142.5)];
        [RingPath3 addCurveToPoint: CGPointMake(84.5, 184) controlPoint1: CGPointMake(43, 165.42) controlPoint2: CGPointMake(61.58, 184)];
    [RingPath3 stroke];
                                          
    CAShapeLayer *ring3=[CAShapeLayer layer];
    ring3.lineWidth = 15;
    ring3.path=RingPath3.CGPath;
    ring3.fillColor=[UIColor clearColor].CGColor;
    ring3.strokeColor=[[UIColor colorWithRed: 0.941 green: 0.457 blue: 0.612 alpha: 1]CGColor];
    [self.card2.layer addSublayer:ring3];
        


        //ring animation
        CABasicAnimation *r1=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        r1.beginTime =CACurrentMediaTime() ;
        r1.duration=0.2;
        r1.removedOnCompletion=NO;
        r1.autoreverses = NO;
        r1.fillMode=kCAFillModeBoth;
        r1.fromValue=@(0);
        r1.toValue=@(1);
        r1.timingFunction=[CAMediaTimingFunction  functionWithControlPoints:0.42 : 0 :1 :1];
        [ring1 addAnimation:r1 forKey:@"r1"];
        
        CABasicAnimation *r3=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        r3.beginTime =CACurrentMediaTime() + 0.2;
        r3.duration=0.2;
        r3.removedOnCompletion=NO;
        r3.autoreverses = NO;
        r3.fillMode=kCAFillModeBoth;
        r3.fromValue=@(0);
        r3.toValue=@(1);
        r3.timingFunction=[CAMediaTimingFunction  functionWithControlPoints:1 : 1 :0.5 :0.5];
        [ring3 addAnimation:r3 forKey:@"r3"];
        
        CABasicAnimation *r2=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        r2.beginTime =CACurrentMediaTime() + 0.4;
        r2.duration=0.3;
        r2.removedOnCompletion=NO;
        r2.autoreverses = NO;
        r2.fillMode=kCAFillModeBoth;
        r2.fromValue=@(0);
        r2.toValue=@(1);
        r2.timingFunction=[CAMediaTimingFunction  functionWithControlPoints:1 : 1 :0.42 :1];
        [ring2 addAnimation:r2 forKey:@"r2"];
        
        
        
    };
    
    POPBasicAnimation *C1A = [POPBasicAnimation animation];
    C1A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
    C1A.beginTime = CACurrentMediaTime() + 0.2;
    C1A.fromValue= @(0);
    C1A.toValue= @(1);
    [_card1 pop_addAnimation:C1A forKey:@"C1A"];
    
    POPBasicAnimation *C2A = [POPBasicAnimation animation];
    C2A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
    C2A.beginTime = CACurrentMediaTime() + 0.3;
    C2A.fromValue= @(0);
    C2A.toValue= @(1);
    [_card2 pop_addAnimation:C2A forKey:@"C2A"];
    
    
}


@end
