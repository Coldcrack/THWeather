//
//  WebViewController.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/5/30.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setNavigationbar];
    
    

    


}
- (void)setNavigationbar
{
    //    创建web页面 使用URL地址 直接加在网页
    //    使用WebView 加载
    UIWebView *webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //URL 直接加载网页
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.coldcrack.me/about/"]];
    [webView loadRequest:request];
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    [self.view addSubview:webView];
    UIView *Navi = [[UIView alloc]initWithFrame:CGRectMake(0, 0, screenRect.size.width, 44)];
    [self.view addSubview:Navi];
    Navi.backgroundColor = [UIColor colorWithRed:246.0/255 green:246.0/255 blue:246.0/255 alpha:1.0];
   //创建UIButton 可根据需要选择适合自己的样式
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 10, 44, 44);
    [Navi addSubview:btn];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    // 设置字体颜色
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];

}
- (void)buttonAction:(UIButton *)button
{
   [self dismissViewControllerAnimated:YES completion:^{
       
   }];
    NSLog(@"按钮被点击了");
}

-(void)navigationBackButton{
    
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
