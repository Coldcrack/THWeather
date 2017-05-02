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
        NSDictionary *astro = dic[@"astro"];
        NSDictionary *cond = dic[@"cond"];
        NSDictionary *tmp =dic[@"tmp"];
        NSDictionary *wind = dic[@"wind"];
        _date = dic[@"date"];
        _hum = dic[@"hum"];
        _pcpn = dic[@"pcpn"];
        _pop = dic[@"pop"];
        _pres = dic[@"pres"];
        _vis = dic[@"vis"];
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
