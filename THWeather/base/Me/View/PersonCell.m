//
//  PersonCell.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/5/2.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "PersonCell.h"
@implementation PersonCell

- (void)setIconImage:(UIImage *)image titile:(NSString *)title{
    _IconView.image = image;
    _titleLabel.text = title;
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
