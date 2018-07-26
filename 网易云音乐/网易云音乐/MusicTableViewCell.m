//
//  MusicTableViewCell.m
//  网易云音乐
//
//  Created by 姜凯文 on 2018/7/25.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "MusicTableViewCell.h"

@implementation MusicTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.icon1 = [[UIButton alloc] init];
        [self.contentView addSubview:_icon1];
        
        self.label1 = [[UILabel alloc] init];
        [self.contentView addSubview:_label1];
        
        self.label2 = [[UILabel alloc] init];
        [self.contentView addSubview:_label2];
    }
    return self;
}
- (void) layoutSubviews {
    _icon1.frame = CGRectMake(0, 0, 55, 50);
    
    _label1.frame = CGRectMake(65, 0, 200, 50);
    
    _label2.frame = CGRectMake(100, 0, 70, 50);
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
