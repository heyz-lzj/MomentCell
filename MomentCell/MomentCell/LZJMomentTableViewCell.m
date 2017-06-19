//
//  LZJMomentTableViewCell.m
//  MomentCell
//
//  Created by 子杰 李 on 2017/6/19.
//  Copyright © 2017年 子杰 李. All rights reserved.
//

#import "LZJMomentTableViewCell.h"

@interface LZJMomentTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property (weak, nonatomic) IBOutlet UILabel *createTimeLbl;
@property (weak, nonatomic) IBOutlet UILabel *contentLbl;
@property (weak, nonatomic) IBOutlet UIButton *likeBtn;
@property (weak, nonatomic) IBOutlet UILabel *likeCountLbl;
@property (weak, nonatomic) IBOutlet UIButton *commentBtn;
@property (weak, nonatomic) IBOutlet UILabel *commentCountLbl;
@property (weak, nonatomic) IBOutlet UIView *imagesContainer;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *commentViewConstraintHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imagesViewConstraintHeight;


@end

@implementation LZJMomentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    _avatarImageView.layer.masksToBounds = YES;
    _avatarImageView.layer.cornerRadius = CGRectGetWidth(_avatarImageView.frame)/2;
}

- (void)updateWithData:(NSDictionary *)dict{
    int R = (arc4random() % 256) ;
    int G = (arc4random() % 256) ;
    int B = (arc4random() % 256) ;
    _avatarImageView.backgroundColor = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
    
    _nameLbl.text = dict[@"name"];
    _contentLbl.text = dict[@"content"];
    _createTimeLbl.text = dict[@"time"];
    _commentCountLbl.text = [dict[@"commentCount"]stringValue];
    _likeCountLbl.text = [dict[@"likeCount"] stringValue];
    
    CGFloat width = CGRectGetWidth(self.contentView.frame)-15*2;
    NSInteger hFactor = [dict[@"images"]count];
    _imagesViewConstraintHeight.constant = ((hFactor-1)/3 + 1)*width/3;
    
    for (UIView *v in _imagesContainer.subviews) {
        [v removeFromSuperview];
    }
    
    CGFloat iw = (width-8*2)/3;
    [dict[@"images"] enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(idx%3 * (8 + iw), idx/3 * (8 + iw), iw, iw)];
        iv.backgroundColor = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
        
        [_imagesContainer addSubview:iv];
    }];
    
    
}
@end
