//
//  THDailyModel.h
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/26.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THDailyModel : NSObject
/*
 "daily_forecast": [  //7-10天天气预报
 {
 "astro": {   //天文数值
 "mr": "04:19",   //月升时间
 "ms": "18:07",   //月落时间
 "sr": "05:41",   //日出时间
 "ss": "18:47"   //日落时间
 },
 "cond": {   //天气状况
 "code_d": "100",   //白天天气状况代码
 "code_n": "104",  //夜间天气状况代码
 "txt_d": "晴",   //白天天气状况描述
 "txt_n": "阴"   //夜间天气状况描述
 },
 "date": "2016-08-31",  //预报日期
 "hum": "17",  //相对湿度（%）
 "pcpn": "0.0",  //降水量（mm）
 "pop": "1",  //降水概率
 "pres": "997",  //气压
 "tmp": {   //温度
 "max": "33",   //最高温度
 "min": "19"   //最低温度
 },
 "vis": "10",   //能见度（km）
 "wind": {   //风力风向
 "deg": "342",   //风向（360度）
 "dir": "北风",  //风向
 "sc": "3-4",   //风力等级
 "spd": "10"   //风速（kmph）
 }*/
@property(nonatomic , copy) NSString *mr;
@property(nonatomic , copy) NSString *ms;
@property(nonatomic , copy) NSString *sr;
@property(nonatomic , copy) NSString *ss;
@property(nonatomic , copy) NSString *code_d;
@property(nonatomic , copy) NSString *code_n;
@property(nonatomic , copy) NSString *txt_d;
@property(nonatomic , copy) NSString *txt_n;
@property(nonatomic , copy) NSString *date;
@property(nonatomic , copy) NSString *hum;
@property(nonatomic , copy) NSString *pcpn;
@property(nonatomic , copy) NSString *pop;
@property(nonatomic , copy) NSString *pres;
@property(nonatomic , copy) NSString *tmp;
@property(nonatomic , copy) NSString *max;
@property(nonatomic , copy) NSString *min;
@property(nonatomic , copy) NSString *vis;
@property(nonatomic , copy) NSString *deg;
@property(nonatomic , copy) NSString *dir;
@property(nonatomic , copy) NSString *sc;
@property(nonatomic , copy) NSString *spd;

-(instancetype)initWithDic:(NSDictionary *)dic;


@end
