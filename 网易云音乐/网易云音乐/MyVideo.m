//
//  MyVideo.m
//  网易云音乐
//
//  Created by 姜凯文 on 2018/7/24.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "MyVideo.h"

@interface MyVideo ()

@end

@implementation MyVideo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个分栏按钮对象
    //参数1：文字
    //参数2：图片
    //参数3：设置按钮值
    //方法一
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@"视频" image:[UIImage imageNamed:@"2"] tag:2];
    
    self.tabBarItem = tabBarItem;
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
