
//
//  LiveViewController.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/24.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//

#import "LiveViewController.h"
#import "AFNetworking.h"
#import "LiveCell.h"

@interface LiveViewController () <UICollectionViewDataSource>
{
    UICollectionView *_collectionView;
    NSArray *_titiles;
    NSArray *_imageNames;
    UIView *header;
    
    NSArray *_liveConfig;
    THLifeModel *_model;
}
@end

@implementation LiveViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.screenHeight = [UIScreen mainScreen].bounds.size.height;
    self.screenWidth = [UIScreen mainScreen].bounds.size.width;

    _liveConfig = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"LiveConfig" ofType:@"plist"]];
    
    
    UIImage *background = [UIImage imageNamed:@"bg_blue@2x.png"];
    //添加背景图片
    self.backgroundImageView = [[UIImageView alloc] initWithImage:background];
    self.backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:self.backgroundImageView];
    
    CGFloat collectionWidth = self.screenWidth - 20;
    CGFloat cellWidth = (collectionWidth - 20) / 2;
    //创建单元格，设置单元格
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(cellWidth, cellWidth * 0.7);
    layout.minimumInteritemSpacing = 20;
    
    _titiles = @[@"穿衣",@"洗车",@"紫外线",@"运动",@"感冒",@"舒适度",@"旅游"];
    _imageNames = @[@"1198776.png", @"1198143.png",@"1198774.png",@"1198840.png",@"1198775.png",@"1198581.png",@"1197998.png"];
    
    
    
    
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(10, 64, collectionWidth, self.screenHeight)
                                         collectionViewLayout:layout];
    
    _collectionView.dataSource = self;
    [self.view addSubview:_collectionView];
    _collectionView.backgroundColor = [UIColor clearColor];
    //注册单元格
    UINib *nib = [UINib nibWithNibName:@"LiveCell" bundle:[NSBundle mainBundle]];
    [_collectionView registerNib:nib forCellWithReuseIdentifier:@"cell"];
    //网络访问
    //city=hangzhou&key=c9b5cd5f40ac4747859cd6e5af2e51a0
//    https://free-api.heweather.com/v5/suggestion?city=yourcity&key=yourkey
    
    _lifeArray = [[NSMutableArray alloc]init];
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc]init];
    NSURL *lifeURL = [NSURL URLWithString:@"https://free-api.heweather.com/v5/suggestion?city=hangzhou&key=c9b5cd5f40ac4747859cd6e5af2e51a0"];
    NSURLRequest *request = [NSURLRequest requestWithURL:lifeURL];
    NSURLSessionDataTask *daTask = [manager dataTaskWithRequest:request uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSLog(@"ERROR:%@",error);
        }else {
            NSDictionary *array = [responseObject[@"HeWeather5"]firstObject][@"suggestion"];
            
            _model = [[THLifeModel alloc]initWithDic:array];
            
        }
    }];
    [daTask resume];
    
}



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _liveConfig.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    LiveCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.layer.borderColor = [UIColor grayColor].CGColor;
    cell.layer.borderWidth = 2;
    
    
    
    
    NSDictionary *config = _liveConfig[indexPath.item];
    UIImage *image = [UIImage imageNamed:config[@"iconName"]];
    NSString *title = config[@"title"];
    NSString *text = @"未知";
    NSString *key = config[@"dicKey"];
    
//    if ([key isEqualToString:@"sport"]) {
//        text = _model.sport;
//    } else if ([key isEqualToString:@"drsg"]) {
//        text = _model.drsg;
//    }

    
    SEL s = NSSelectorFromString(key);
    if ([_model respondsToSelector:s]) {
        text = [_model performSelector:s];
    }
    
    
    
    [cell setIconImage:image title:title text:text];
    
    return cell;
}



- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    CGRect bounds = self.view.bounds;
    self.backgroundImageView.frame = bounds;

}
 
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
