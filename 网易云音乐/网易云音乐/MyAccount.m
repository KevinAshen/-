//
//  MyAccount.m
//  网易云音乐
//
//  Created by 姜凯文 on 2018/7/24.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "MyAccount.h"
#import "JKWTableViewCell.h"

@interface MyAccount ()<UITableViewDelegate,
    UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView;

@property (nonatomic, copy)NSArray *array;

@end

@implementation MyAccount

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //导航栏
//    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Yin"] style:UIBarButtonItemStyleDone target:self action:nil];
    
    //开始TableView的操作
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    //self.tableView.backgroundColor = [UIColor whiteColor];
    
    //
    [self.tableView registerClass:[JKWTableViewCell class]  forCellReuseIdentifier:@"labelCell"];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //自动调整子视图大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleWidth;
    
    [self.view addSubview:_tableView];

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 120;
    } if (indexPath.section == 5) {
        return 80;
    }
    return 50;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *array = [NSArray arrayWithObjects:@1, @1, @3, @6, @2, @1 ,nil];
    return [array[section] integerValue];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell1 = nil;
    UITableViewCell *cell2 = nil;
    UITableViewCell *cell3 = nil;
    UITableViewCell *cell4 = nil;
    UITableViewCell *cell5 = nil;
    cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
    cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
    cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell3"];
    cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell4"];
    cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell5"];
    

    if (indexPath.section == 0) {
        if (cell1 == nil) {
            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell1"];
            UIButton *button = [[UIButton alloc] init];
            button.backgroundColor = [UIColor whiteColor];
            button.layer.masksToBounds = YES;
            button.layer.borderWidth = 1;
            button.layer.borderColor = [UIColor grayColor].CGColor;
            button.frame = CGRectMake(235, 45, 70, 30);
            button.layer.cornerRadius = 5;
            //变不了蓝色
            button.tintColor = [UIColor whiteColor];
            button.backgroundColor = [UIColor blueColor];
            [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            
            [button setTitle:@"签到" forState:UIControlStateNormal];
            
            [button setTitle:@"已到" forState:UIControlStateSelected];
            [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [button setImage:[UIImage imageNamed:@"金币"]forState:UIControlStateNormal];
            
            //[icon1 setTitleColor:[UIColor blueColor]forState:UIControlStateNormal];
            
            [button addTarget:self action:@selector(touchBtn:) forControlEvents:UIControlEventTouchUpInside];            [cell1.contentView addSubview:button];

        }
        [cell1.imageView setImage:[UIImage imageNamed:@"Head.jpg"]];
        cell1.textLabel.text = @"网易UFO丁磊";
        cell1.detailTextLabel.text = @"lv.99";
        return cell1;
    } else if (indexPath.section == 2 && indexPath.row == 1) {
        if (cell2 == nil) {
            cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
            UIButton *icon1 = [[UIButton alloc] initWithFrame: CGRectMake(3, 7, 35, 35)];
            UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(55, 0, 150, 50)];
            UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(230, 12, 200, 25)];
            
            [icon1 setImage:[UIImage imageNamed:@"s3"] forState:UIControlStateNormal];
            
            label1.text= @"商城";
            label2.text = @"color水杯";
            
            label2.textColor = [UIColor grayColor];
            
            label2.font = [UIFont systemFontOfSize:15];
            
            //
            [cell2.contentView addSubview:label1];
            [cell2.contentView addSubview:label2];
            [cell2.contentView addSubview:icon1];
            
            }
        

        cell2.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell2;
            
    } else if (indexPath.section == 3 && indexPath.row == 2) {
        if (cell3 == nil) {
            cell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell3"];
            UIButton *icon1 = [[UIButton alloc] initWithFrame: CGRectMake(3, 7, 35, 35)];
            UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(55, 0, 150, 50)];
           UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(230, 10, 200, 25)];
            
            [icon1 setImage:[UIImage imageNamed:@"s7"] forState:UIControlStateNormal];
            
            label1.text = @"个性皮肤";
            
            label2.text = @"自选颜色";
            
            label2.textColor = [UIColor grayColor];
            
            label2.font = [UIFont systemFontOfSize:15];
            
            [cell3.contentView addSubview:label1];
            [cell3.contentView addSubview:label2];
            [cell3.contentView addSubview:icon1];
        }
        //cell2.textLabel.text = @"123";
        cell3.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell3;
    } else if (indexPath.section == 3 && indexPath.row == 3) {
        if (cell4 == nil) {
            cell4 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell4"];
            UIButton *icon1 = [[UIButton alloc] initWithFrame: CGRectMake(3, 7, 35, 35)];
            UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(55, 0, 150, 50)];
            
            [icon1 setImage:[UIImage imageNamed:@"s8"] forState:UIControlStateNormal];
            
            label1.text = @"夜间模式";
            
            UISwitch *kai = [[UISwitch alloc] initWithFrame:CGRectMake(230, 10, 40, 40)];
            
            
            [cell4.contentView addSubview:label1];
            [cell4.contentView addSubview:kai];
            [cell4.contentView addSubview:icon1];
            
        }
        cell4.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell4;
    } else if (indexPath.section == 5) {
        if (cell5 == nil) {
            
            cell5 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell5"];
            
            UIButton *icon1 = [[UIButton alloc] initWithFrame:CGRectMake(113, 20, 100, 45)];
            
            [icon1 addTarget:self action:@selector(showAlert:) forControlEvents:UIControlEventTouchUpInside];
            
            
            
            [icon1 setTitle:@"退出登录" forState:UIControlStateNormal];
            
            [icon1 setTitleColor:[UIColor blueColor]forState:UIControlStateNormal];
            
//            icon1.titleLabel.textColor = [UIColor blueColor];
//
            //居中
//            icon1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
            

            [cell5.contentView addSubview:icon1];
        }
        //cell5.textLabel.text = @"123";
        return cell5;
    } else {
        JKWTableViewCell* cell = nil;
        
        //文字的二维数组
        NSArray *first = [NSArray arrayWithObject:@"我的消息"];
        
        NSArray *second = [NSArray arrayWithObjects:@"会员中心", @"商城", @"在线听歌免流量", nil];
        
        NSArray *third = [NSArray arrayWithObjects:@"设置", @"扫一扫", @"个性换肤", @"夜间模式", @"定时关闭", @"音乐闹钟", @"驾驶模式", @"优惠券", nil];
        
        NSArray *forth = [NSArray arrayWithObjects:@"分享网易云音乐", @"关于", nil];
        
        NSArray *account = [[NSArray alloc] initWithObjects:first, second, third, forth, nil];
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
        
        cell.label1.text = [[account objectAtIndex:indexPath.section - 1] objectAtIndex:indexPath.row];
        
        //图片的二维数组
        NSArray *imFirst = [NSArray arrayWithObject:[UIImage imageNamed:@"s1"]];
        
        NSArray *imSecond = [NSArray arrayWithObjects:[UIImage imageNamed:@"s2"], [UIImage imageNamed:@"s3"], [UIImage imageNamed:@"s4"], nil];
        
        NSArray *imThird = [NSArray arrayWithObjects:[UIImage imageNamed:@"s5"], [UIImage imageNamed:@"s6"], [UIImage imageNamed:@"s7"], [UIImage imageNamed:@"s8"], [UIImage imageNamed:@"s9"], [UIImage imageNamed:@"s10"], [UIImage imageNamed:@"s11"], [UIImage imageNamed:@"s12"], nil];
        
        NSArray *imForth = [NSArray arrayWithObjects:[UIImage imageNamed:@"s13"], [UIImage imageNamed:@"s14"], nil];
        
        NSArray *imAccount = [[NSArray alloc] initWithObjects:imFirst, imSecond, imThird, imForth, nil];
        
        [cell.icon1 setImage:imAccount[indexPath.section - 1][indexPath.row] forState:UIControlStateNormal];
        
        //UIImage *aa = [UIImage imageNamed:@"s1"];
        
        //[cell.icon1 setImage:aa forState:UIControlStateNormal];
        
        
        cell.label2.text = @"JKW";
        
        //设置小箭头风格
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        return cell;
    }
}


- (IBAction)showAlert:(UIButton *)sender {
    
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"注册" message:@"表面注册了解一下" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* yes = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleDefault handler:nil];
    
    UIAlertAction* no = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleDestructive handler:nil];
    
    //    UIAlertAction* no1 = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleDestructive handler:nil];
    
    [alert addAction:yes];
    
    [alert addAction:no];
    
    [self presentViewController:alert animated:YES completion:nil];
}


-(void)touchBtn:(UIButton*)button
{
    //NSLog(@"%s",__FUNCTION__);
    //设置button的Normal属性  和 selected属性后，通过下面简单非语句切换两种状态
    button.selected = !button.selected;
    
    if(button.selected){
        [button setImage:nil forState:UIControlStateNormal];
    }else{
        [button setImage:[UIImage imageNamed:@"金币.png"] forState:UIControlStateNormal];
    }
    
    //button.imageView.image = nil;
    
}

//- (UITableView *)tableView:(UITableView *)tableView
//     cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    UITableView* cell1 = nil;
//    UITableView* cell2 = nil;
//
//    cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
//    cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
//
//    if (indexPath.section == 2) {
//        JKWTableViewCell* cell = nil;
//        cell = [tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
//        cell.label1.text = @"JJJ";
//        cell.label2.text = @"KKK";
//
//        return cell;
//    }
//    return cell2;
//}

//尾部设定
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}

//尾部设定
- (CGFloat)tableView:(UITableView *)tableView heightForRooterInSection:(NSInteger)section
{
    return 5;
}

//- (NSString *):(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return ;
//}

//并不知道什么意思的函数
- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView * test = [UIView new];
    test.backgroundColor = [UIColor purpleColor];
    return test;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

@end
