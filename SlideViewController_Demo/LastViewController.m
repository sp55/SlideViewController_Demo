//
//  LastViewController.m
//  SlideViewController_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "LastViewController.h"

@interface LastViewController ()

@end

@implementation LastViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"最后一个页面";
    self.view.backgroundColor =[UIColor whiteColor];
    
    
    
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(10, 200, 300, 60)];
    label.numberOfLines = 0;
    label.text = @"这个页面关掉了侧滑，所以从屏幕最左边滑动不能划过去了";
    [self.view addSubview:label];

}
//侧滑关掉
-(BOOL)gestureRecognizerShouldBegin
{
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
