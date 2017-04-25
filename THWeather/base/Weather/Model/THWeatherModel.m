//
//  THWeatherModel.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/24.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "THWeatherModel.h"

@implementation THWeatherModel

- (instancetype)initWithDic:(NSDictionary *)dic{
    self = [super init];
    if (self) {
        NSDictionary *aqi = dic[@"HeWeather5"][0][@"aqi"];
        
        _city = dic[@"HeWeather5"][0][@"basic"][@"city"];
        _cnty = dic[@"HeWeather5"][0][@"basic"][@"cnty"];
        _prov = dic[@"HeWeather5"][0][@"basic"][@"prov"];
        _maxtmp = dic[@"HeWeather5"][0][@"daily_forecast"][@"tmp"][@"max"];
        _mintmp = dic[@"HeWeather5"][0][@"daily_forecast"][@"tmp"][@"max"];
        _tmp = dic[@"HeWeather5"][0][@"now"][@"tmp"];
        _txt_d = dic[@"HeWeather5"][0][@"daily_forecast"][@"cond"][@"txt_d"];
        _txt_n = dic[@"HeWeather5"][0][@"daily_forecast"][@"cond"][@"txt_n"];
        _pm25 = aqi[@"city"][@"pm25"];
        
    }
    return self;
}

@end
