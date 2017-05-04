//
//  THLifeModel.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/5/3.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "THLifeModel.h"

@implementation THLifeModel
-(instancetype)initWithDic:(NSDictionary *)dic {
    if (self) {
        self = [super init];
        _comf = dic[@"comf"][@"brf"];
        _cw = dic[@"cw"][@"brf"];
        _drsg = dic[@"drsg"][@"brf"];
        _flu = dic[@"flu"][@"brf"];
        _sport = dic[@"sport"][@"brf"];
        _trav = dic[@"trav"][@"brf"];
        _uv = dic[@"uv"][@"brf"];
    }
    return self;
}
@end
