//
//  BaseViewController.h
//  SlideViewController_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController


// 默认返回为YES,表示支持右滑返回
- (BOOL)gestureRecognizerShouldBegin;
//Custom TitleView
-(void)setCustomTitle:(NSString *)title;


-(void)needBackAction:(BOOL)isNeed;
-(void)backAction;

@end
