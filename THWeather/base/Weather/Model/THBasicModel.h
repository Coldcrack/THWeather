//
//  THBasicModel.h
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/26.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THBasicModel : NSObject
/*
 "basic": { //基本信息
 "city": "北京",  //城市名称
 "cnty": "中国",   //国家
 "id": "CN101010100",  //城市ID
 "lat": "39.904000", //城市维度
 "lon": "116.391000", //城市经度
 "prov": "北京",  //城市所属省份（仅限国内城市）
 "update": {  //更新时间
 "loc": "2016-08-31 11:52",  //当地时间
 "utc": "2016-08-31 03:52" //UTC时间*/
@property (nonatomic , copy)NSString *city;           //城市
@property (nonatomic , copy)NSString *cnty;           //国家
@property (nonatomic , copy)NSString *prov;           //所在省
- (instancetype)initWithDic:(NSDictionary *)dic;
@end
