//
//  THHourModel.h
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/28.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THHourModel : NSObject
@property (nonatomic , copy)NSString *date;
//@property (nonatomic , copy)NSString *dir;
@property (nonatomic , copy)NSString *tmp;
@property (nonatomic , copy)NSString *pop;

-(instancetype)initWithDic:(NSDictionary *)dic;
@end
