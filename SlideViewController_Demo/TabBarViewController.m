//
//  TabBarViewController.m
//  SlideViewController_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "TabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "NavigationController.h"


@interface TabBarViewController ()
@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildViewController:@"FirstViewController" title:@"首页" image:@"" selectedImage:@""];
    [self addChildViewController:@"SecondViewController" title:@"测试" image:@"" selectedImage:@""];
    

}

- (void)addChildViewController:(NSString *)childController title:(NSString *)title image:(NSString *)normalImg selectedImage:(NSString *)selectedImg {
    Class class = NSClassFromString(childController);
    BaseViewController *controller = [[class alloc] init];
    controller.title = title;
    
    NavigationController *navi = [[NavigationController alloc] initWithRootViewController:controller];
    [navi.tabBarItem setImage:[[UIImage imageNamed:normalImg] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [navi.tabBarItem setImageInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    [navi.tabBarItem setSelectedImage:[[UIImage imageNamed:selectedImg] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [navi.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1.0f]} forState:UIControlStateNormal];
    [navi.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor redColor]} forState:UIControlStateSelected];
    [self addChildViewController:navi];
}


@end
