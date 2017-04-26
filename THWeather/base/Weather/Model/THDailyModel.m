//
//  THDailyModel.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/26.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "THDailyModel.h"

@implementation THDailyModel

-(instancetype)initWithDic:(NSDictionary *)dic {
    self = [super init];
    if (self) {
        NSDictionary *astro = dic[@"HeWeather5"][0][@"daily_forecast"][0][@"astro"];
        NSDictionary *cond = dic[@"HeWeather5"][0][@"daily_forecast"][0][@"cond"];
        NSDictionary *tmp =dic[@"HeWeather5"][0][@"daily_forecast"][0][@"tmp"];
        NSDictionary *wind = dic[@"HeWeather5"][0][@"daily_forecast"][0][@"wind"];
        _date = dic[@"HeWeather5"][0][@"daily_forecast"][0][@"date"];
        _hum = dic[@"HeWeather5"][0][@"daily_forecast"][0][@"hum"];
        _pcpn = dic[@"HeWeather5"][0][@"daily_forecast"][0][@"pcpn"];
        _pop = dic[@"HeWeather5"][0][@"daily_forecast"][0][@"pop"];
        _pres = dic[@"HeWeather5"][0][@"daily_forecast"][0][@"pres"];
        _vis = dic[@"HeWeather5"][0][@"daily_forecast"][0][@"vis"];
        _mr = astro[@"mr"];
        _mr = astro[@"ms"];
        _mr = astro[@"sr"];
        _mr = astro[@"ss"];
        _code_d = cond[@"code_d"];
        _code_n = cond[@"code_d"];
        _txt_d = cond[@"txt_d"];
        _txt_n = cond[@"txt_n"];
        _max = tmp[@"max"];
        _min = tmp[@"min"];
        _deg = wind[@"deg"];
        _dir = wind[@"dir"];
        _sc = wind[@"sc"];
        _spd = wind[@"spd"];
    }
    return self;
}
@end
