
//
//  NavigationController.m
//  SlideViewController_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "NavigationController.h"
//http://blog.csdn.net/cuibo1123/article/details/46841607
//UINavigationController返回手势失效问题
#import "BaseViewController.h"
//http://ios.jobbole.com/84365/
//右拉侧滑显示

@interface NavigationController ()<UIGestureRecognizerDelegate>
@property (nonatomic, assign) BOOL enableRightGesture;
@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor blackColor]];
    
    self.interactivePopGestureRecognizer.delegate = self;
    
}

//自定制的按钮会玲系统的侧滑失效  所以需要自定制导航条  然后打开侧滑

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    // 默认为支持右滑反回
    if ([self.topViewController isKindOfClass:[BaseViewController class]]) {
        if ([self.topViewController respondsToSelector:@selector(gestureRecognizerShouldBegin)]) {
            BaseViewController *vc = (BaseViewController *)self.topViewController;
            self.enableRightGesture = [vc gestureRecognizerShouldBegin];
        }
    }
    
    return self.enableRightGesture;
}
@end
