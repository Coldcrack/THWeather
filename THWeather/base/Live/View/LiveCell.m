//
//  LiveCell.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/5/3.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "LiveCell.h"

@implementation LiveCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(void)setLifeModel:(THLifeModel *)LifeModel {
    if (_LifeModel == LifeModel) {
        return;
    }
    _LifeModel = LifeModel;
}
- (void)setIconImage:(UIImage *)image title:(NSString *)title text:(NSString *)text{
    _iconImageView.image = image;
    _label1.text = title;
    _label2.text = text;
}


@end
