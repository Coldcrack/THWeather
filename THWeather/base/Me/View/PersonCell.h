//
//  PersonCell.h
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/5/2.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *IconView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


- (void)setIconImage:(UIImage *)image titile:(NSString *)title;

@end
