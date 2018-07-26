//
//  JKWTableViewCell.m
//  网易云音乐
//
//  Created by 姜凯文 on 2018/7/25.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "JKWTableViewCell.h"

@implementation JKWTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style
        reuseIdentifier:reuseIdentifier];
    if (self) {
        self.label1 = [[UILabel alloc] init];
        [self.contentView addSubview:_label1];
        
        self.label2 = [[UILabel alloc] init];
        [self.contentView addSubview:_label2];
        
        self.icon1 = [[UIButton alloc] init];
        [self.contentView addSubview:_icon1];
    }
    return self;
}
- (void) layoutSubviews {
    [super layoutSubviews];
    
    _icon1.frame = CGRectMake(3, 7, 35, 35);
    //_icon1.backgroundColor = [UIColor greenColor];
    
    _label1.frame = CGRectMake(55, 0, 150, 50);
    //_label1.backgroundColor = [UIColor blackColor];
    //_label1.textColor = [UIColor whiteColor];
    
    //_label2.frame = CGRectMake(80, 0, 50, 50);
    //_label2.backgroundColor = [UIColor yellowColor];
    //_label2.textColor = [UIColor blackColor];
    

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
