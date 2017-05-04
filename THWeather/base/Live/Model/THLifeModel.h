//
//  THLifeModel.h
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/5/3.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface THLifeModel : NSObject
@property (nonatomic , copy) NSString *comf;
@property (nonatomic , copy) NSString *cw;
@property (nonatomic , copy) NSString *drsg;
@property (nonatomic , copy) NSString *flu;
@property (nonatomic , copy) NSString *sport;
@property (nonatomic , copy) NSString *trav;
@property (nonatomic , copy) NSString *uv;

-(instancetype)initWithDic:(NSDictionary *)dic;
@end
