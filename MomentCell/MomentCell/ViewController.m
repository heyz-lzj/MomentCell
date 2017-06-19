//
//  ViewController.m
//  MomentCell
//
//  Created by 子杰 李 on 2017/6/19.
//  Copyright © 2017年 子杰 李. All rights reserved.
//

#import "ViewController.h"
#import "LZJMomentTableViewCell.h"
@interface ViewController ()<UITableViewDataSource>
@property (nonatomic) UITableView *tableView;
@property NSArray *datas;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _datas = @[
               @{@"name":@"微型计算机官方微博",
                 @"time":@"5月18日 12:44",
                 @"content":@"【LG放弃自研CPU】因为处理器性能不给力，加上LG智能手机销量大幅下滑，韩国亚洲日报报道称，LG已经终止了自家移动处理器的开发，LG相关负责人还表示与Intel签署的代工合作协议已经失去了意义。这对Intel的代工业务是一个不小的打击，因为英特尔为了拉拢更多的客户，还推出了10nm ARM处理器代工计划",
                 @"images":@[@1,@1,@3],
                 @"likeCount":@33,
                 @"commentCount":@1
                 },
               @{@"name":@"lzj",
                 @"time":@"6月11日 17:04",
                 @"content":@"安卓的平板和手机可以，iOS的移动端不是很稳定，有时候可以看，有时候显示加载不到，还在调试中[污]",
                 @"images":@[@1],
                 @"likeCount":@3,
                 @"commentCount":@1
                 },
               @{@"name":@"博博博博博",
                 @"time":@"5月18日 12:44",
                 @"content":@"#马博士谈营养# 贝类爱好者们注意啦！近期，我国南方部分海域发生赤潮，国家食药监总局近日发布消费提示，建议消费者及餐饮单位尽量避免购买来自赤潮地区的贝类。受赤潮影响的贝类对健康有什么危害？马博士为您解读什么是麻痹性贝类毒素，又该如何健康的食用鲜美的贝类—— °贝类毒素，藻类生产，赤潮来袭，吃贝谨慎 ​​",
                 @"images":@[@1,@1,@3,@1,@3,@1,@3,@1,@3],
                 @"likeCount":@18303,
                 @"commentCount":@113
                 },
               
               ];
    
    [self.view addSubview:self.tableView];
}

- (UITableView *)tableView{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds)) style:(UITableViewStylePlain)];
        
        _tableView.dataSource = self;
        _tableView.rowHeight = UITableViewAutomaticDimension;
        _tableView.estimatedRowHeight = 100;
        [_tableView registerNib:[UINib nibWithNibName:@"LZJMomentTableViewCell" bundle:nil] forCellReuseIdentifier:@"LZJMomentTableViewCell"];
    }
    
    return _tableView;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _datas.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    LZJMomentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LZJMomentTableViewCell"];
    
    [cell updateWithData:_datas[indexPath.row]];
    
    return cell;
}
@end
