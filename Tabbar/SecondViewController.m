//
//  SecondViewController.m
//  Tabbar
//
//  Created by 1 on 15/6/18.
//  Copyright (c) 2015年 1. All rights reserved.
//

#import "SecondViewController.h"
#import <pop/POP.h>

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITabBarItem *tabstar;
@property (strong, nonatomic) IBOutlet UIImageView *card1;
@property (strong, nonatomic) IBOutlet UIImageView *card2;

@end

@implementation SecondViewController

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
    
    CGPoint card2c=_card2.center;
    _card2.center=card2c;
    POPSpringAnimation * C2Y = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    C2Y.beginTime = CACurrentMediaTime() + 0.3;
    C2Y.toValue = @(card2c. y-= 200);
    C2Y.springBounciness = 4;
    C2Y.springSpeed = 8;
    [_card2 pop_addAnimation:C2Y forKey:@"Card2Y"];
    
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
