//
//  THHourModel.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/28.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "THHourModel.h"

@implementation THHourModel
-(instancetype)initWithDic:(NSDictionary *)dic {
    if (self) {
        self = [super init];
        _date = dic[@"date"];
        _tmp = dic[@"tmp"];
        _pop = dic[@"pop"];
        
    }
    return self;
}
@end
