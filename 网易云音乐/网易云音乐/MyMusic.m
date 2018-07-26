//
//  MyMusic.m
//  网易云音乐
//
//  Created by 姜凯文 on 2018/7/24.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "MyMusic.h"
#import "MusicTableViewCell.h"

@interface MyMusic ()<UITableViewDelegate,
UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView;

@property (nonatomic, copy)NSArray *array;

@end

@implementation MyMusic

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor clearColor];
    
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    self.navigationItem.title = @"我的音乐";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yun"] style:UIBarButtonItemStyleDone target:self action:nil];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Yin"] style:UIBarButtonItemStyleDone target:self action:nil];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    //自动调整子视图大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleWidth;
    
    //注册
    [self.tableView registerClass:[MusicTableViewCell class] forCellReuseIdentifier:@"musicCell"];
    
    //禁止hua'dong
    // _tableView.bounces = NO;
    
    [self.view addSubview:_tableView];
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *array = [NSArray arrayWithObjects:@4, @2, @6, nil];
    return [array[section] integerValue];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MusicTableViewCell* cell = nil;
    
    
    
    //容易忘记
    cell = [tableView dequeueReusableCellWithIdentifier:@"musicCell"forIndexPath:indexPath];
        
    //图片二维数组
    NSArray *imFirst = [NSArray arrayWithObjects:[UIImage imageNamed:@"k1"], [UIImage imageNamed:@"k2"], [UIImage imageNamed:@"k3"], [UIImage imageNamed:@"k4"], nil];
        
    NSArray *imSecond = [NSArray arrayWithObjects:[UIImage imageNamed:@"3.jpg"], [UIImage imageNamed:@"4.jpg"], nil];
        
    NSArray *imThird = [NSArray arrayWithObjects:[UIImage imageNamed:@"5.jpg"], [UIImage imageNamed:@"6.jpg"], [UIImage imageNamed:@"7.jpg"], [UIImage imageNamed:@"8.jpg"], [UIImage imageNamed:@"9.jpg"], [UIImage imageNamed:@"10.jpg"], nil];
        
    NSArray *imMusic = [[NSArray alloc] initWithObjects:imFirst, imSecond, imThird, nil];

    [cell.icon1 setImage:imMusic[indexPath.section] [indexPath.row] forState:UIControlStateNormal];
    
    //文字二维数组
    NSArray *teFirst = [NSArray arrayWithObjects:@"本地音乐", @"最近播放", @"我的电台", @"我的收藏", nil];
    
    NSArray *teSecone = [NSArray arrayWithObjects:@"我喜欢的音乐", @"纯音乐", nil];
    
    NSArray *teThird = [NSArray arrayWithObjects:@"学习音乐", @"华语令人伤感", @"再见1998", @"男儿当自强", @"我就是我，不一样的烟火", @"设计师工作背景音乐", nil];
    
    NSArray *teMusic = [NSArray arrayWithObjects:teFirst, teSecone, teThird, nil];
    
    cell.label1.text = teMusic[indexPath.section][indexPath.row];
//    //副标题文字二维数组
//    NSArray *fuFirst = [NSArray arrayWithObjects:@"", @"", @"", @"", nil];
//    
//    NSArray *fuSecone = [NSArray arrayWithObjects:@"我喜欢", @"纯音乐", nil];
//    
//    NSArray *fuThird = [NSArray arrayWithObjects:@"学习音", @"华语令", @"再见19", @"男儿", @"我就", @"设计", nil];
//    
//    NSArray *fuMusic = [NSArray arrayWithObjects:fuFirst, fuSecone, fuThird, nil];
//    
//    cell.label3.font = [UIFont systemFontOfSize:9];
//    
//    cell.label3.textColor = [UIColor grayColor];
//    
//    cell.label3.text = fuMusic[indexPath.section][indexPath.row];
        
    return cell;
}


//获取头部高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 0;
    }
    return 7;
}
//获取每组头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 1) {
        return @"~ 我创建的歌单(2)                                              ...";
    } else if (section == 2) {
        return @"~ 我收藏的歌单(6)                                              ..." ;
    }
    return nil;
}

//获取每组尾部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return nil;
}

//并不知道什么意思的函数
- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//    UIView * test = [UIView new];
//    test.backgroundColor = [UIColor purpleColor];
    return nil;
}

//并不知道什么意思的函数
- (UIView *) tableView:(UITableView *)tableView viewForRooterInSection:(NSInteger)section {
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
