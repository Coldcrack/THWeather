//
//  WeatherController.h
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/24.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherController : UIViewController<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate>
@property (nonatomic, strong) UIImageView *backgroundImageView;   //背景图
@property (nonatomic, strong) UITableView *tableView; //添加一个tableView
@property (nonatomic, assign) CGFloat screenHeight;
@property (nonatomic, strong) NSMutableArray *dailyArray;      //存放每天的天气情况
@property (nonatomic, strong) NSMutableArray *hourlyArray;     //存放每个小时的天气情况
@end
