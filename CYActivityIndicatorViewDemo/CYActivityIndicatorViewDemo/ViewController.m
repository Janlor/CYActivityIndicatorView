//
//  ViewController.m
//  CYActivityIndicatorView
//
//  Created by Janlor on 2019/11/18.
//  Copyright © 2019 Janlor. All rights reserved.
//

#import "ViewController.h"
#import "CYActivityIndicatorView.h"

@interface ViewController ()

///
@property (nonatomic, strong) CYActivityIndicatorView *activityIndicatorView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.greenColor;
    
    CYActivityIndicatorView *activityIndicatorView = [[CYActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 200, 200) type:CYActivityIndicatorTypeLineScalePulseOut color:[UIColor whiteColor]];
    activityIndicatorView.center = self.view.center;
    [self.view addSubview:activityIndicatorView];
    [activityIndicatorView startAnimating];
    _activityIndicatorView = activityIndicatorView;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([_activityIndicatorView animating]) {
        [_activityIndicatorView stopAnimating];
    } else {
        [_activityIndicatorView startAnimating];
    }
}


@end
