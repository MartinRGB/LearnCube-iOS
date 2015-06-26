//
//  FifthViewController.m
//  Tabbar
//
//  Created by 1 on 15/6/18.
//  Copyright (c) 2015年 1. All rights reserved.
//

#import "FifthViewController.h"
#import <pop/POP.h>

@interface FifthViewController ()
@property (weak, nonatomic) IBOutlet UITabBarItem *tabsetting;
@property (weak, nonatomic) IBOutlet UIImageView *S1;
@property (weak, nonatomic) IBOutlet UIImageView *S2;
@property (weak, nonatomic) IBOutlet UIImageView *S3;
@property (weak, nonatomic) IBOutlet UIImageView *S4;
@property (weak, nonatomic) IBOutlet UIImageView *avatar;
@property (weak, nonatomic) IBOutlet UIImageView *m1;
@property (weak, nonatomic) IBOutlet UIImageView *m2;

@end

@implementation FifthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{

    //init
    _m1.alpha = 0;
    _m2.alpha = 0;
    
    _avatar.transform = CGAffineTransformMakeScale(0.001, 0.001);
    
    _S1.alpha = 0;
    _S2.alpha = 0;
    _S3.alpha = 0;
    _S4.alpha = 0;
   

    

    //chained animation
    POPSpringAnimation *av = [POPSpringAnimation animation];
    av.property = [POPAnimatableProperty propertyWithName:kPOPViewScaleXY];
    av.beginTime = CACurrentMediaTime() + 0.1;
    av.springBounciness = 6;
    av.springSpeed = 10;
    av.toValue=[NSValue valueWithCGSize:CGSizeMake(1, 1)];
    av.name=@"i1";
    av.delegate=self;
    [_avatar pop_addAnimation:av forKey:@"avatar"];
    av.completionBlock =^(POPAnimation *anim, BOOL finished){
        
        //introduction
        CGPoint m1c=_m1.center;
        _m1.center=m1c;
        CGPoint m2c=_m2.center;
        _m2.center=m2c;
        
        POPSpringAnimation * M1X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
        M1X.beginTime = CACurrentMediaTime() + 0;
        M1X.toValue = @(m2c. y+= 25);
        M1X.springBounciness = 8;
        M1X.springSpeed = 8;
        [_m2 pop_addAnimation:M1X forKey:@"M1X"];
        
        POPSpringAnimation * M2X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
        M2X.beginTime = CACurrentMediaTime() + 0;
        M2X.toValue = @(m1c. y+= 25);
        M2X.springBounciness = 8;
        M2X.springSpeed = 8;
        [_m1 pop_addAnimation:M2X forKey:@"M2X"];
        
        POPBasicAnimation *M1A = [POPBasicAnimation animation];
        M1A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
        M1A.beginTime = CACurrentMediaTime() + 0.05;
        M1A.fromValue= @(0);
        M1A.toValue= @(1);
        [_m2 pop_addAnimation:M1A forKey:@"M1A"];
        
        POPBasicAnimation *M2A = [POPBasicAnimation animation];
        M2A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
        M2A.beginTime = CACurrentMediaTime() + 0.05;
        M2A.fromValue= @(0);
        M2A.toValue= @(1);
        [_m1 pop_addAnimation:M2A forKey:@"M2A"];
        M2A.completionBlock =^(POPAnimation *anim, BOOL finished){
            CGPoint c1c=_S1.center;
            _S1.center=c1c;
            CGPoint c2c=_S2.center;
            _S2.center=c2c;
            CGPoint c3c=_S3.center;
            _S3.center=c3c;
            CGPoint c4c=_S4.center;
            _S4.center=c4c;
            
            POPSpringAnimation * C1X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
            C1X.beginTime = CACurrentMediaTime() + 0.1;
            C1X.toValue = @(c1c. y-= 100);
            C1X.springBounciness = 4;
            C1X.springSpeed = 8;
            [_S1 pop_addAnimation:C1X forKey:@"C1X"];
            
            POPSpringAnimation * C2X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
            C2X.beginTime = CACurrentMediaTime() + 0.15;
            C2X.toValue = @(c2c. y-= 100);
            C2X.springBounciness = 4;
            C2X.springSpeed = 8;
            [_S2 pop_addAnimation:C2X forKey:@"C2X"];
            
            POPSpringAnimation * C3X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
            C3X.beginTime = CACurrentMediaTime() + 0.2;
            C3X.toValue = @(c3c. y-= 100);
            C3X.springBounciness = 4;
            C3X.springSpeed = 8;
            [_S3 pop_addAnimation:C3X forKey:@"C3X"];
            
            POPSpringAnimation * C4X = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
            C4X.beginTime = CACurrentMediaTime() + 0.25;
            C4X.toValue = @(c4c. y-= 100);
            C4X.springBounciness = 4;
            C4X.springSpeed = 8;
            [_S4 pop_addAnimation:C4X forKey:@"C4X"];
            
            
            POPBasicAnimation *C1A = [POPBasicAnimation animation];
            C1A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
            C1A.beginTime = CACurrentMediaTime() + 0.1;
            C1A.fromValue= @(0);
            C1A.toValue= @(1);
            [_S1 pop_addAnimation:C1A forKey:@"C1A"];
            
            POPBasicAnimation *C2A = [POPBasicAnimation animation];
            C2A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
            C2A.beginTime = CACurrentMediaTime() + 0.15;
            C2A.fromValue= @(0);
            C2A.toValue= @(1);
            [_S2 pop_addAnimation:C2A forKey:@"C2A"];
            
            POPBasicAnimation *C3A = [POPBasicAnimation animation];
            C3A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
            C3A.beginTime = CACurrentMediaTime() + 0.2;
            C3A.fromValue= @(0);
            C3A.toValue= @(1);
            [_S3 pop_addAnimation:C3A forKey:@"C3A"];
            
            POPBasicAnimation *C4A = [POPBasicAnimation animation];
            C4A.property = [POPAnimatableProperty propertyWithName:kPOPViewAlpha];
            C4A.beginTime = CACurrentMediaTime() + 0.25;
            C4A.fromValue= @(0);
            C4A.toValue= @(1);
            [_S4 pop_addAnimation:C4A forKey:@"C4A"];
        };
    };
    
   
    
  
    
    
    
    
}
@end
