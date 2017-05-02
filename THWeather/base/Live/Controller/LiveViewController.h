//
//  LiveViewController.h
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/24.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LiveViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIImageView *backgroundImageView;
@property (nonatomic, assign) CGFloat screenHeight; 
@end
