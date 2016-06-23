//
//  BaseViewController.m
//  SlideViewController_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    [self needBackAction:YES];

    
}

-(void)needBackAction:(BOOL)isNeed
{
    if (isNeed) {
        UIBarButtonItem *backItem =[[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"nav_back-n"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] landscapeImagePhone:nil style:UIBarButtonItemStyleDone target:self action:@selector(backAction)];
        self.navigationItem.leftBarButtonItem = backItem;
    }else{
        self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
        self.navigationItem.hidesBackButton = YES;
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] init];
    }
}
#pragma mark - custom title
-(void)setCustomTitle:(NSString *)title
{
    UILabel *customLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 150, 40)];
    customLabel.textAlignment = NSTextAlignmentCenter;
    customLabel.textColor = [UIColor whiteColor];
    customLabel.font = [UIFont systemFontOfSize:16];
    customLabel.text = title;
    self.navigationItem.titleView = customLabel;
}
#pragma mark  - back
-(void)backAction
{
    if (self.navigationController == nil) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}



- (BOOL)gestureRecognizerShouldBegin {
    return YES;
}

@end
