//
//  DetailViewController.m
//  SlideViewController_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "DetailViewController.h"
#import "LastViewController.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"详情页面";

    
    self.view.backgroundColor =[UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(35, 150, 200, 50);
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"lastVC" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(10, 250, 300, 60)];
    label.numberOfLines = 0;
    label.text = @"这个页面可以侧滑，所以从屏幕最左边滑动能划回去";
    [self.view addSubview:label];
    
    
}
-(void)btnAction
{
    LastViewController *lastVC =[[LastViewController alloc] init];
    lastVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:lastVC animated:YES];
    
}





@end
