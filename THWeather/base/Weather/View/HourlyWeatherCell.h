//
//  HourlyWeatherCell.h
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/28.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "THHourModel.h"
@interface HourlyWeatherCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *tmp;

@property (weak, nonatomic) IBOutlet UILabel *pop;

@property (weak, nonatomic) IBOutlet UILabel *date;
@property (nonatomic , strong )THHourModel *HourlyModel;

@end
