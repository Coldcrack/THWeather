//
//  THBasicController.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/24.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "THBasicController.h"
#import "WeatherController.h"
#import "MeViewController.h"
#import "LiveViewController.h"
@interface THBasicController ()

@end

@implementation THBasicController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    //创建控制器按钮
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    //    创建子控制器
    [self setupChildVc:[[WeatherController alloc] init] title:@"天气" image:@"tabbar_weather" selectedImage:@"tabbar_weather_select"];
    [self setupChildVc:[[LiveViewController alloc] init]title:@"生活" image:@"tabbar_live" selectedImage:@"tabbar_live_select"];
    [self setupChildVc:[[MeViewController alloc] init] title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_select"];
    
}

//初始化子控制器
-(void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    
    //    设置文字和颜色
    vc.tabBarItem.title=title;
    vc.tabBarItem.image=[UIImage imageNamed:image];
    vc.tabBarItem.selectedImage=[UIImage imageNamed:selectedImage];
    vc.view.backgroundColor=[UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100.0 alpha:1.0];
    
    //    添加子控制器
    [self addChildViewController:vc];
}
//改变状态栏外观
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
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
