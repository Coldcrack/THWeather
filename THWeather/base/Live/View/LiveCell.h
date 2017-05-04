//
//  LiveCell.h
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/5/3.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "THLifeModel.h"
@interface LiveCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (nonatomic , strong)THLifeModel *LifeModel;

- (void)setIconImage:(UIImage *)image title:(NSString *)title text:(NSString *)text;



@end
