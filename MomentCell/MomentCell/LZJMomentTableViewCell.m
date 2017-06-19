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
@property (weak, nonatomic) IBOutlet UIView *likeCountLbl;
@property (weak, nonatomic) IBOutlet UIButton *commentBtn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *commentCountLbl;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *commentViewConstraintHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imagesViewConstraintHeight;


@end

@implementation LZJMomentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)updateWithData:(NSDictionary *)dict{
    
    
}
@end
