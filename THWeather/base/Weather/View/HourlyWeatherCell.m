//
//  HourlyWeatherCell.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/28.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "HourlyWeatherCell.h"

@implementation HourlyWeatherCell
-(void)setHourlyModel:(THHourModel *)HourlyModel {
    if (_HourlyModel == HourlyModel ) {
        return;
    }
    _HourlyModel = HourlyModel;
//    _pop.text = HourlyModel.pop;
    _pop.text = [NSString stringWithFormat:@"降水概率:%@",HourlyModel.pop];
//    _tmp.text = HourlyModel.tmp;
    _pop.text = [NSString stringWithFormat:@"气温:%@℃",HourlyModel.tmp];
    _date.text = HourlyModel.date;
    
    
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
