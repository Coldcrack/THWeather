//
//  MeViewController.m
//  THWeather
//
//  Created by 嗷嗷叫 on 2017/4/24.
//  Copyright © 2017年 嗷嗷叫aoaojiao. All rights reserved.
//
#define kScreenWidth self.view.bounds.size.width
#define kScreenHeight self.view.bounds.size.height

#import "MeViewController.h"
#import "PersonCell.h"
#import "WebViewController.h"
@interface MeViewController ()
{
    NSArray *_titel;
    NSArray *_imageStr;
    UILabel *_cacheLable;
    UIImageView *_headImageV;
    UIView *header;
}

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.screenHeight = [UIScreen mainScreen].bounds.size.height;
    self.screenWidth = [UIScreen mainScreen].bounds.size.width;
    UIImage *background = [UIImage imageNamed:@"bg_fog_day.jpg"];
    //添加背景图片
    self.backgroundImage = [[UIImageView alloc] initWithImage:background];
    self.backgroundImage.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:self.backgroundImage];
    
    self.tableView = [[UITableView alloc] init];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorColor = [UIColor colorWithWhite:1 alpha:0.2];
    self.tableView.pagingEnabled = YES;
    _imageStr = @[@"profile_recommendation_icon@2x.png",@"profile_mojimall_icon@2x.png",@"profile_personalpage_icon@2x.png",@"profile_share_icon@2x.png",@"profile_settings_icon@2x.png",@"profile_draftbox_icon@2x"];
    _titel = @[@"给个好评",@"商城",@"关于我",@"社交账号",@"设置",@"清除缓存"];
    
    [self.view addSubview:self.tableView];
    [self _createHeadView];
    //设置单元格偏移
//    _tableView.contentInset = UIEdgeInsetsMake(0, 0, 44, 0);

}

-(void)_createHeadView
{
    CGRect headerFrame = CGRectMake(0, 0,_screenWidth, 150);
    header = [[UIView alloc]initWithFrame:headerFrame];
    header.backgroundColor = [UIColor clearColor];
    [self.view addSubview:header];
    self.tableView.tableHeaderView = header;
    
    //版本label
    UILabel *editionLabel = [[UILabel alloc]initWithFrame:CGRectMake(275, 30, 50, 10)];
    editionLabel.text = @"V5.7.0";
    editionLabel.textColor = [UIColor whiteColor];
    editionLabel.font = [UIFont systemFontOfSize:12];
    [header addSubview:editionLabel];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - datesource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _titel.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PersonCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell"];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"PersonCell" owner:nil options:nil] lastObject];
        //设置单元格
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2];
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.detailTextLabel.textColor = [UIColor whiteColor];
    }
    
    
    //单元格填充
    UIImage *image = [UIImage imageNamed:_imageStr[indexPath.row]];
    
    [cell setIconImage:image titile:_titel[indexPath.row]];
    
    
    
    return cell;
}
#pragma mark - UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"提示" message:@"程序猿这么辛苦，是否给个好评" delegate:self cancelButtonTitle:@"否" otherButtonTitles:@"是", nil];
        [alert show];
    }
    if (indexPath.row == 2) {
        WebViewController * web = [[WebViewController alloc] init];
        [self presentViewController:web animated:YES completion:nil];
    }
    if (indexPath.row == 5) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"提示" message:@"是否要清理缓存" delegate:self cancelButtonTitle:@"否" otherButtonTitles:@"是", nil];
        [alert show];
    }
    
}
//设置单元格
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}
//显示视图
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGRect bounds = self.view.bounds;
    self.backgroundImage.frame = bounds;
    self.tableView.frame = bounds;
}
@end
