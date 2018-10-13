//
//  JDTableViewCell.m
//  TableVeiwDemo
//
//  Created by Stefan on 2018/9/1.
//  Copyright © 2018年 Stefan. All rights reserved.
//

#import "JDTableViewCell.h"
#import "Masonry.h"

@implementation JDTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    NSString *cellId = @"JDTableViewCell";
    JDTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[JDTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initViews];
    }
    
    return self;
}

- (void)initViews
{
    UILabel *nameLb = [[UILabel alloc]init];
    nameLb.text = @"asj卡三等奖覅额外的咖啡机浪蝶狂蜂破，爱是看得见佛诶 爱神的箭覅为加上地方";
//    nameLb.attributedText = [[NSAttributedString alloc]initWithString:@"aksdfjeiwjef"];
//    nameLb.text = @"asj卡三等奖覅额外的咖啡机";
    nameLb.textColor = [UIColor orangeColor];
    nameLb.backgroundColor = [UIColor colorWithWhite:0.5 alpha:1];
    [self.contentView addSubview:nameLb];

    UILabel *detailLb = [[UILabel alloc]init];
    detailLb.text = @"哈哈哈啊哈哈😀fgAJFI及";
    detailLb.textColor = [UIColor grayColor];
    detailLb.backgroundColor = [UIColor blueColor];
    [self.contentView addSubview:detailLb];
    
    
    __weak typeof(self) wSelf = self;
    [nameLb mas_makeConstraints:^(MASConstraintMaker *make) {
        //        make.edges.equalTo(wSelf.contentView);
        make.top.leading.bottom.mas_equalTo(0);
        //        make.trailing.mas_equalTo(-160);
        //make.right.equalTo(wSelf.mas_right);
        //        make.width.equalTo(wSelf.contentView).multipliedBy(0.2); //乘于
        //        make.width.equalTo(wSelf.contentView).dividedBy(3); //除于
        //        make.width.equalTo(wSelf.contentView).priorityLow(); //优先级 默认为1000（最高的）
        make.height.mas_equalTo(80);
        //        make.width.lessThanOrEqualTo(wSelf.contentView).offset(-5);  //少于或等于，优先根据文字长短排布
        make.right.equalTo(detailLb.mas_left).offset(-5);
    }];
    
    [detailLb mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(nameLb);
        make.centerY.equalTo(@[nameLb, wSelf.contentView]);  //可以带数组
        make.height.mas_equalTo(30);
        make.left.equalTo(nameLb.mas_right).mas_offset(5);
//        make.right.mas_equalTo(-5);
        
        make.right.mas_lessThanOrEqualTo(-5);
        make.width.lessThanOrEqualTo(wSelf.contentView).multipliedBy(0.2);
//        make.width.lessThanOrEqualTo(wSelf.contentView).offset(-5);  //少于或等于，优先根据文字长短排布
    }];
    
}
@end



