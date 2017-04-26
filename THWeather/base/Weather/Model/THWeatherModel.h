//
//  THWeatherModel.h
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/24.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THBasicModel.h"
@interface THWeatherModel : NSObject

@property (nonatomic , copy)NSString *maxtmp;         //最高温
@property (nonatomic , copy)NSString *mintmp;         //最低温
@property (nonatomic , copy)NSString *tmp;            //温度
@property (nonatomic , copy)NSString *pm25;           //pm2.5
@property (nonatomic , copy)NSString *txt_d;          //白天天气状况
@property (nonatomic , copy)NSString *txt_n;          //夜间天气状况

- (instancetype)initWithDic:(NSDictionary *)dic;

@end
