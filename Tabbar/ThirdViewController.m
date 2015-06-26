//
//  ThirdViewController.m
//  Tabbar
//
//  Created by 1 on 15/6/18.
//  Copyright (c) 2015年 1. All rights reserved.
//

#import "ThirdViewController.h"
#import <pop/POP.h>

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet UITabBarItem *tabstore;
@property (weak,nonatomic) UIImageView *oval;
@property (weak,nonatomic) UIImageView *tie;
@property (weak,nonatomic) UIImageView *browsercode;
@property (weak,nonatomic) UIImageView *bitzcam;
@property (weak,nonatomic) UIImageView *bill;
@property (weak,nonatomic) UIImageView *bandage;
@property (weak,nonatomic) UIImageView *moviecam;
@property (weak,nonatomic) UIImageView *financestat;
@property (weak,nonatomic) UIImageView *drums;
@property (weak,nonatomic) UIImageView *dj;
@property (weak,nonatomic) UIImageView *negativephoto;
@property (weak,nonatomic) UIImageView *calculator;
@property (weak,nonatomic) UIImageView *chart;
@property (weak,nonatomic) UIImageView *browserscript;
@property (weak,nonatomic) UIImageView *spaceship;
@property (weak,nonatomic) UIImageView *pcboard;
@property (weak,nonatomic) UIImageView *analyzeloop;
@property (weak,nonatomic) UIImageView *cube;
@property (weak,nonatomic) UIImageView *jesus;
@property (weak,nonatomic) UIImageView *line;
@property (weak,nonatomic) UIImageView *p3text;
@property (weak,nonatomic) UIImageView *i1;
@property (weak,nonatomic) UIImageView *i2;
@property (weak,nonatomic) UIImageView *i3;
@property (weak,nonatomic) UIImageView *i4;
@property (weak,nonatomic) UIImageView *i5;
@property (weak,nonatomic) UIImageView *i6;

@end

@implementation ThirdViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //middle text
    UIImageView * line = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Line"]];
    
    [self.view addSubview:line];
    self.line = line;
    
    UIImageView * p3text = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"P3Text"]];
    [self.view addSubview:p3text];
    self.p3text = p3text;
    
    // six icon
    UIImageView * i1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"I1"]];
    i1.frame = CGRectMake(28, 310, 80, 80);
    [self.view addSubview:i1];
    self.i1 = i1;
    UIImageView * i2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"I2"]];
    i2.frame = CGRectMake(120, 310, 80, 80);
    [self.view addSubview:i2];
    self.i2 = i2;
    UIImageView * i3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"I3"]];
    i3.frame = CGRectMake(212, 310, 80, 80);
    [self.view addSubview:i3];
    self.i3 = i3;
    UIImageView * i4 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"I4"]];
    i4.frame = CGRectMake(28, 411, 80, 80);
    [self.view addSubview:i4];
    self.i4 = i4;
    UIImageView * i5 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"I5"]];
    i5.frame = CGRectMake(120, 411, 80, 80);
    [self.view addSubview:i5];
    self.i5 = i5;
    UIImageView * i6 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"I6"]];
    i6.frame = CGRectMake(212, 411, 80, 80);
    [self.view addSubview:i6];
    self.i6 = i6;
    
    //icon in circle
    UIImageView * oval = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Oval.png"]];
    oval.frame = CGRectMake(78, 78, 165, 165);
    oval.layer.masksToBounds = YES;
    oval.layer.cornerRadius = 82;
    [self.view addSubview:oval];
    self.oval = oval;
    
    UIImageView * cube = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3D"]];
    cube.frame = CGRectMake(54, 55, 57, 58);
    [_oval addSubview:cube];
    self.cube = cube;
    
    UIImageView * tie = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Tie.png"]];
    [_oval addSubview:tie];
    self.tie = tie;
    
    UIImageView * browsercode = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Browsercode"]];
    [_oval addSubview:browsercode];
    self.browsercode = browsercode;
    
    UIImageView * bitzcam = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Blitzcam"]];
    [_oval addSubview:bitzcam];
    self.bitzcam = bitzcam;
    
    UIImageView * bill = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Bill.png"]];
    [_oval addSubview:bill];
    self.bill = bill;
    
    UIImageView * bandage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Bandage"]];
    [_oval addSubview:bandage];
    self.bandage = bandage;
    
    UIImageView * moviecam = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Moviecam"]];
    [_oval addSubview:moviecam];
    self.moviecam = moviecam;
    
    UIImageView * financestat = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Financestat"]];
    [_oval addSubview:financestat];
    self.financestat = financestat;
    
    UIImageView * drums = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Drums"]];
    [_oval addSubview:drums];
    self.drums = drums;
    
    UIImageView * dj = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"DJ"]];
    [_oval addSubview:dj];
    self.dj = dj;
    
    UIImageView * negativephoto = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Negativephoto"]];
    [_oval addSubview:negativephoto];
    self.negativephoto = negativephoto;
    
    UIImageView * calculator = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Calculator"]];
    [_oval addSubview:calculator];
    self.calculator = calculator;
    
    UIImageView * chart = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Chart"]];
    [_oval addSubview:chart];
    self.chart = chart;
    
    UIImageView * browserscript = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Browserscript"]];
    [_oval addSubview:browserscript];
    self.browserscript = browserscript;
    
    UIImageView * spaceship = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Spaceship"]];
    [_oval addSubview:spaceship];
    self.spaceship = spaceship;
    
    UIImageView * pcboard = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PCboard"]];
    [_oval addSubview:pcboard];
    self.pcboard = pcboard;
    
    UIImageView * analyzeloop = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Analyzeloop"]];
    [_oval addSubview:analyzeloop];
    self.analyzeloop = analyzeloop;
    
    UIImageView * jesus = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Jesus"]];
    [_oval addSubview:jesus];
    self.jesus = jesus;
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    //init
    _line.frame = CGRectMake(58, 295, 0, 3);
    _p3text.frame = CGRectMake(58,285,203,19);
    _p3text.alpha = 0;
    
    _oval.transform = CGAffineTransformMakeScale(0.001, 0.001);
    _cube.transform = CGAffineTransformMakeScale(0.001, 0.001);
    _i1.transform = CGAffineTransformMakeScale(0.001, 0.001);
    _i2.transform = CGAffineTransformMakeScale(0.001, 0.001);
    _i3.transform = CGAffineTransformMakeScale(0.001, 0.001);
    _i4.transform = CGAffineTransformMakeScale(0.001, 0.001);
    _i5.transform = CGAffineTransformMakeScale(0.001, 0.001);
    _i6.transform = CGAffineTransformMakeScale(0.001, 0.001);
    
    _tie.frame = CGRectMake(79, -20, 7, 18);
    _browsercode.frame = CGRectMake(169, 83, 13, 11);
    _bitzcam.frame = CGRectMake(112, 162, 28, 31);
    _bill.frame = CGRectMake(0, 139, 23, 26);
    _bandage.frame = CGRectMake(73, 170, 19, 19);
    _moviecam.frame = CGRectMake(119, -17, 23, 26);
    _financestat.frame = CGRectMake(23, -9.5, 22, 19);
    _drums.frame = CGRectMake(142, 9, 13, 18);
    _dj.frame = CGRectMake(-21, 18, 26, 12);
    _negativephoto.frame = CGRectMake(83, 194, 15, 18);
    _calculator.frame = CGRectMake(159, 28, 23, 30);
    _chart.frame = CGRectMake(157, 124, 21, 20);
    _browserscript.frame = CGRectMake(-39, 58, 31, 25);
    _spaceship.frame = CGRectMake(54, -18, 13, 14);
    _pcboard.frame = CGRectMake(140, -17, 17, 15);
    _analyzeloop.frame = CGRectMake(-31, 110, 23, 24);
    _jesus.frame = CGRectMake(43, 173, 9, 9);
    
    //1.oval
    CABasicAnimation *oval = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    oval.duration = 0.4;
    oval.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 : 0.46 :0.45 :0.94];
    oval.fromValue = [NSNumber numberWithFloat:.0];
    oval.toValue = [NSNumber numberWithFloat:1];
    oval.autoreverses = NO;
    oval.removedOnCompletion = NO;
    oval.fillMode=kCAFillModeForwards;
    [_oval.layer addAnimation:oval forKey:@"transform.scale"];
    
    
    
    
    //1 top things
    [UIView animateWithDuration:0.25
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                        _oval.transform = CGAffineTransformMakeScale(1, 1);
                         
                     } completion:^(BOOL finished) {
                         
                         [UIView animateWithDuration:0.3
                                               delay:0.0
                              usingSpringWithDamping:0.7
                               initialSpringVelocity:10.0
                                             options:UIViewAnimationOptionCurveEaseOut
                                          animations:^{
                                              _cube.transform = CGAffineTransformMakeScale(1, 1);
                                              
                                              
                                          } completion:^(BOOL finished) {
                                              
                                              [UIView animateWithDuration:0.3
                                                                    delay:0.0
                                                                  options:UIViewAnimationOptionCurveEaseOut
                                                               animations:^{
                                                                   _tie.frame = CGRectMake(78, 4, 7, 18);
                                                                   _browsercode.frame = CGRectMake(124, 90, 13, 11);
                                                                   _bitzcam.frame = CGRectMake(95, 115, 28, 31);
                                                                   _bill.frame = CGRectMake(32, 119, 23, 26);
                                                                   _bandage.frame = CGRectMake(64, 119, 19, 19);
                                                                   _moviecam.frame = CGRectMake(84, 25, 23, 26);
                                                                   _financestat.frame = CGRectMake(48, 9, 22, 19);
                                                                   _drums.frame = CGRectMake(118, 30, 13, 18);
                                                                   _dj.frame = CGRectMake(26, 37, 26, 12);
                                                                   _negativephoto.frame = CGRectMake(75, 145, 15, 18);
                                                                   _calculator.frame = CGRectMake(124, 54, 23, 30);
                                                                   _chart.frame = CGRectMake(127, 108, 21, 20);
                                                                   _browserscript.frame = CGRectMake(14, 57, 31, 25);
                                                                   _spaceship.frame = CGRectMake(63, 34, 13, 14);
                                                                   _pcboard.frame = CGRectMake(101, 13, 17, 15);
                                                                   _analyzeloop.frame = CGRectMake(15, 94, 23, 24);
                                                                   _jesus.frame = CGRectMake(56, 146, 9, 9);
                                                                   
                                                                   //2 down things
                                                                   [UIView animateWithDuration:0.3
                                                                                         delay:0.0
                                                                                       options:UIViewAnimationOptionCurveEaseOut
                                                                                    animations:^{
                                                                                        _line.frame = CGRectMake(58, 295, 205, 3);
                                                                                    } completion:^(BOOL finished) {
                                                                                        
                                                                                        [UIView animateWithDuration:0.3
                                                                                                              delay:0
                                                                                                            options:UIViewAnimationOptionCurveEaseOut
                                                                                                         animations:^{
                                                                                                             _p3text.frame = CGRectMake(58,270,203,19);
                                                                                                             _p3text.alpha = 1;
                                                                                                             
                                                                                                             
                                                                                                         } completion:^(BOOL finished) {
                                                                                                             
                                                                                                             
                                                                                                         }];
                                                                                        
                                                                                        
                                                                                        
                                                                                        POPSpringAnimation *i1 = [POPSpringAnimation animation];
                                                                                        i1.property = [POPAnimatableProperty propertyWithName:kPOPViewScaleXY];
                                                                                        i1.beginTime = CACurrentMediaTime() + 0.1;
                                                                                        i1.springBounciness = 4;
                                                                                        i1.springSpeed = 8;
                                                                                        i1.toValue=[NSValue valueWithCGSize:CGSizeMake(1, 1)];
                                                                                        i1.name=@"i1";
                                                                                        i1.delegate=self;
                                                                                        [self.i1 pop_addAnimation:i1 forKey:@"i1"];
                                                                                        
                                                                                        POPSpringAnimation *i2 = [POPSpringAnimation animation];
                                                                                        i2.property = [POPAnimatableProperty propertyWithName:kPOPViewScaleXY];
                                                                                        i2.beginTime = CACurrentMediaTime() + 0.15;
                                                                                        i2.springBounciness = 4;
                                                                                        i2.springSpeed = 8;
                                                                                        i2.toValue=[NSValue valueWithCGSize:CGSizeMake(1, 1)];
                                                                                        i2.name=@"i2";
                                                                                        i2.delegate=self;
                                                                                        [self.i2 pop_addAnimation:i2 forKey:@"i2"];
                                                                                        
                                                                                        POPSpringAnimation *i3 = [POPSpringAnimation animation];
                                                                                        i3.property = [POPAnimatableProperty propertyWithName:kPOPViewScaleXY];
                                                                                        i3.beginTime = CACurrentMediaTime() + 0.2;
                                                                                        i3.springBounciness = 4;
                                                                                        i3.springSpeed = 8;
                                                                                        i3.toValue=[NSValue valueWithCGSize:CGSizeMake(1, 1)];
                                                                                        i3.name=@"i2";
                                                                                        i3.delegate=self;
                                                                                        [self.i3 pop_addAnimation:i3 forKey:@"i3"];
                                                                                        
                                                                                        POPSpringAnimation *i4 = [POPSpringAnimation animation];
                                                                                        i4.property = [POPAnimatableProperty propertyWithName:kPOPViewScaleXY];
                                                                                        i4.beginTime = CACurrentMediaTime() + 0.25;
                                                                                        i4.springBounciness = 4;
                                                                                        i4.springSpeed = 8;
                                                                                        i4.toValue=[NSValue valueWithCGSize:CGSizeMake(1, 1)];
                                                                                        i4.name=@"i2";
                                                                                        i4.delegate=self;
                                                                                        [self.i4 pop_addAnimation:i4 forKey:@"i4"];
                                                                                        
                                                                                        POPSpringAnimation *i5 = [POPSpringAnimation animation];
                                                                                        i5.property = [POPAnimatableProperty propertyWithName:kPOPViewScaleXY];
                                                                                        i5.beginTime = CACurrentMediaTime() + 0.3;
                                                                                        i5.springBounciness = 4;
                                                                                        i5.springSpeed = 8;
                                                                                        i5.toValue=[NSValue valueWithCGSize:CGSizeMake(1, 1)];
                                                                                        i5.name=@"i2";
                                                                                        i5.delegate=self;
                                                                                        [self.i5 pop_addAnimation:i5 forKey:@"i5"];
                                                                                        
                                                                                        POPSpringAnimation *i6 = [POPSpringAnimation animation];
                                                                                        i6.property = [POPAnimatableProperty propertyWithName:kPOPViewScaleXY];
                                                                                        i6.beginTime = CACurrentMediaTime() + 0.35;
                                                                                        i6.springBounciness = 4;
                                                                                        i6.springSpeed = 8;
                                                                                        i6.toValue=[NSValue valueWithCGSize:CGSizeMake(1, 1)];
                                                                                        i6.name=@"i2";
                                                                                        i6.delegate=self;
                                                                                        [self.i6 pop_addAnimation:i6 forKey:@"i6"];
                                                                                        
                                                                                        
                                                                                        
                                                                                    }];
                                                                   
                                                               } completion:^(BOOL finished) {
                                                                   
                                                                   
                                                               }];
                                             
                                          }];
                         
                         
                     
                     }];
    
    

    
    
    
}



@end
