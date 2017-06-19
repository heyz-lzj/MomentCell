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
