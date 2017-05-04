//
//  DailyWeatherCell.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/26.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "DailyWeatherCell.h"
#import "AFNetworking.h"
@interface DailyWeatherCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *tmpLabel;

@end
@implementation DailyWeatherCell

-(void)setDailyModel:(THDailyModel *)DailyModel
{
    if (_DailyModel == DailyModel) {
        return;
    }
    _DailyModel = DailyModel;
    
    
    _dateLabel.text = _DailyModel.date;
    _tmpLabel.text = [NSString stringWithFormat:@"%@/%@℃",_DailyModel.min,_DailyModel.max];
    
    //填充iconView图标
    //1. 获取配置文件
    NSString *path = [[NSBundle mainBundle] pathForResource:@"DailyWeatherList" ofType:@"plist"];
    NSDictionary *weatherDic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSString *dailyWeather = _DailyModel.txt_d;
//    NSLog(@"%@",_DailyModel.txt_d);
    //4. 根据weatherModel.txt_d来获取图片名  key = weatherModel.txt_d  value =  图片名
    NSString *imageName = weatherDic[dailyWeather];
    UIImage *image = [UIImage imageNamed:imageName];
    _iconImage.image = image;

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
