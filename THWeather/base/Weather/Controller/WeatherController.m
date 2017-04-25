//
//  WeatherController.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/24.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "WeatherController.h"
#import "AFNetworking.h"
#import "THWeatherModel.h"
@interface WeatherController ()

{
    UIView *header;
    UILabel *cityLabel;
    UIImageView *iconView;
    UILabel *conditionsLabel;
    UILabel *temperatureLabel;
    UILabel *hiloLabel;
}
@end

@implementation WeatherController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置Weather背景
    self.screenHeight = [UIScreen mainScreen].bounds.size.height;
    UIImage *background = [UIImage imageNamed:@"bg_fog.jpg"];
    //添加背景图片
    self.backgroundImageView = [[UIImageView alloc] initWithImage:background];
    self.backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:self.backgroundImageView];
    //设置一个tableView
    self.tableView = [[UITableView alloc] init];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorColor = [UIColor colorWithWhite:1 alpha:0.2];
    self.tableView.pagingEnabled = YES;
    [self.view addSubview:self.tableView];
    
    //布局框架
    //布局头部cell
    CGRect headerFrame = [UIScreen mainScreen].bounds;
    CGFloat inset = 20;
    //设置高度、大小
    CGFloat temperatureHeight = 110;
    CGFloat hiloHeight = 40;
    CGFloat iconHeight = 30;
    
    //温度差frame
    CGRect hiloFrame = CGRectMake(inset, headerFrame.size.height - 84, headerFrame.size.width - (2 * inset), hiloHeight);
    //温度frame
    CGRect temperatureFrame = CGRectMake(inset,
                                         headerFrame.size.height - (temperatureHeight + hiloHeight)-44,
                                         headerFrame.size.width - (2 * inset),
                                         temperatureHeight);
    //图标frame
    CGRect iconFrame = CGRectMake(inset,
                                  temperatureFrame.origin.y - iconHeight-44,
                                  iconHeight,
                                  iconHeight);
    // 
    CGRect conditionsFrame = iconFrame;
    conditionsFrame.size.width = self.view.bounds.size.width - (((2 * inset) + iconHeight) + 10);
    conditionsFrame.origin.x = iconFrame.origin.x + (iconHeight + 10);
    //设置视图内容
    header = [[UIView alloc] initWithFrame:headerFrame];
    header.backgroundColor = [UIColor clearColor];
    self.tableView.tableHeaderView = header;
    
    hiloLabel = [[UILabel alloc] initWithFrame:hiloFrame];
    hiloLabel.backgroundColor = [UIColor clearColor];
    hiloLabel.textColor = [UIColor whiteColor];
    hiloLabel.text = @"27 / 29°C";
    hiloLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:28];
    //设置温度label内容
    temperatureLabel = [[UILabel alloc] initWithFrame:temperatureFrame];
    temperatureLabel.backgroundColor = [UIColor clearColor];
    temperatureLabel.textColor = [UIColor whiteColor];
    temperatureLabel.text = @"27°";
    temperatureLabel.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:120];
    [header addSubview:temperatureLabel];
    [header addSubview:hiloLabel];
    //图标视图
    iconView = [[UIImageView alloc] initWithFrame:iconFrame];
    iconView.contentMode = UIViewContentModeScaleAspectFit;
    iconView.backgroundColor = [UIColor blueColor];
    [header addSubview:iconView];
    //城市label
    cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 30)];
    cityLabel.backgroundColor = [UIColor clearColor];
    cityLabel.textColor = [UIColor whiteColor];
    cityLabel.text = @"Loading...";
    cityLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:18];
    cityLabel.textAlignment = NSTextAlignmentCenter;
    [header addSubview:cityLabel];
    //图标右侧label
    conditionsLabel = [[UILabel alloc] initWithFrame:conditionsFrame];
    conditionsLabel.backgroundColor = [UIColor greenColor];
    conditionsLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:18];
    conditionsLabel.textColor = [UIColor whiteColor];
    [header addSubview:conditionsLabel];

    //设置网络访问
    //city=hangzhou&key=c9b5cd5f40ac4747859cd6e5af2e51a0
    //CN101210101  杭州
//    https://free-api.heweather.com/v5/weather?city=CN101210101&key=c9b5cd5f40ac4747859cd6e5af2e51a0
    THWeatherModel *weatherModel = [[THWeatherModel alloc]init];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc]init];
    NSURL *url = [NSURL URLWithString:@"https://free-api.heweather.com/v5/weather?city=CN101210101&key=c9b5cd5f40ac4747859cd6e5af2e51a0"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSLog(@"ERROR:%@",error);
        }else {
            //更新控件的文本
            temperatureLabel.text = THWeatherModel.tmp;
        }
    }];
    [dataTask resume];
    
}
#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 0;
}
//添加单元格
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath; {
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    //设置单元格
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    cell.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2];
    cell.detailTextLabel.textColor = [UIColor whiteColor];
    
    return cell;
    
}

#pragma mark - UITableViewDelegate
//设置单元格行数
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: Determine cell height based on screen
    return 44;
}
//显示视图
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGRect bounds = self.view.bounds;
    
    self.backgroundImageView.frame = bounds;
    self.tableView.frame = bounds;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
