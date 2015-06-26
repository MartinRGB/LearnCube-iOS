//
//  FirstViewController.m
//  Tabbar
//
//  Created by 1 on 15/6/18.
//  Copyright (c) 2015年 1. All rights reserved.
//

#import "FirstViewController.h"
#import <pop/POP.h>

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UITabBarItem *tabdl;
@property (strong, nonatomic) IBOutlet UIImageView *C1;
@property (strong, nonatomic) IBOutlet UIImageView *C2;
@property (strong, nonatomic) IBOutlet UIImageView *C3;
@property (strong, nonatomic) IBOutlet UIImageView *C4;
@property (strong, nonatomic) IBOutlet UIImageView *C5;




@end

@implementation FirstViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    //init
    _C1.alpha = 0;
    _C2.alpha = 0;
    _C3.alpha = 0;
    _C4.alpha = 0;
    _C5.alpha = 0;
    
    CGPoint c1c=_C1.center;
    _C1.center=c1c;
    CGPoint c2c=_C2.center;
    _C2.center=c2c;
    CGPoint c3c=_C3.center;
    _C3.center=c3c;
    CGPoint c4c=_C4.center;
    _C4.center=c4c;
    CGPoint c5c=_C5.center;
    _C5.center=c5c;
    
    //card animation
    POPSpringAnimation * C1X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    C1X.beginTime = CACurrentMediaTime() + 0.2;
    C1X.toValue = @(c1c. y-= 100);
    C1X.springBounciness = 4;
    C1X.springSpeed = 8;
    [_C1 pop_addAnimation:C1X forKey:@"C1X"];
    
    POPSpringAnimation * C2X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    C2X.beginTime = CACurrentMediaTime() + 0.25;
    C2X.toValue = @(c2c. y-= 100);
    C2X.springBounciness = 4;
    C2X.springSpeed = 8;
    [_C2 pop_addAnimation:C2X forKey:@"C2X"];
    
    POPSpringAnimation * C3X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    C3X.beginTime = CACurrentMediaTime() + 0.3;
    C3X.toValue = @(c3c. y-= 100);
    C3X.springBounciness = 4;
    C3X.springSpeed = 8;
    [_C3 pop_addAnimation:C3X forKey:@"C3X"];
    
    POPSpringAnimation * C4X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    C4X.beginTime = CACurrentMediaTime() + 0.35;
    C4X.toValue = @(c4c. y-= 100);
    C4X.springBounciness = 4;
    C4X.springSpeed = 8;
    [_C4 pop_addAnimation:C4X forKey:@"C4X"];
    
    POPSpringAnimation * C5X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    C5X.beginTime = CACurrentMediaTime() + 0.4;
    C5X.toValue = @(c5c. y-= 100);
    C5X.springBounciness = 4;
    C5X.springSpeed = 8;
    [_C5 pop_addAnimation:C5X forKey:@"C5X"];
    
    POPBasicAnimation *C1A = [POPBasicAnimation animation];
    C1A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
    C1A.beginTime = CACurrentMediaTime() + 0.2;
    C1A.fromValue= @(0);
    C1A.toValue= @(1);
    [_C1 pop_addAnimation:C1A forKey:@"C1A"];
    
    POPBasicAnimation *C2A = [POPBasicAnimation animation];
    C2A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
    C2A.beginTime = CACurrentMediaTime() + 0.25;
    C2A.fromValue= @(0);
    C2A.toValue= @(1);
    [_C2 pop_addAnimation:C2A forKey:@"C2A"];
    
    POPBasicAnimation *C3A = [POPBasicAnimation animation];
    C3A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
    C3A.beginTime = CACurrentMediaTime() + 0.3;
    C3A.fromValue= @(0);
    C3A.toValue= @(1);
    [_C3 pop_addAnimation:C3A forKey:@"C3A"];
    
    POPBasicAnimation *C4A = [POPBasicAnimation animation];
    C4A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
    C4A.beginTime = CACurrentMediaTime() + 0.35;
    C4A.fromValue= @(0);
    C4A.toValue= @(1);
    [_C4 pop_addAnimation:C4A forKey:@"C4A"];
    
    POPBasicAnimation *C5A = [POPBasicAnimation animation];
    C5A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
    C5A.beginTime = CACurrentMediaTime() + 0.4;
    C5A.fromValue= @(0);
    C5A.toValue= @(1);
    [_C5 pop_addAnimation:C5A forKey:@"C5A"];
}


@end
