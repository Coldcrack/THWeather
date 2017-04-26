//
//  THBasicModel.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/26.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "THBasicModel.h"

@implementation THBasicModel

- (instancetype)initWithDic:(NSDictionary *)dic{
    self = [super init];
    if (self) {
        NSDictionary *basic = dic[@"HeWeather5"][0][@"basic"];
        _city = basic[@"city"];
        _cnty = dic[@"HeWeather5"][0][@"basic"][@"cnty"];
        _prov = dic[@"HeWeather5"][0][@"basic"][@"prov"];
        
    }
return self;
}

@end
