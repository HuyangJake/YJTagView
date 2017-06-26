//
//  ViewController.m
//  tagsView
//
//  Created by Jake on 2017/6/22.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import "ViewController.h"
#import "YJTagView.h"

@interface ViewController ()<YJTagViewDelegate, YJTagViewDataSource>
@property (weak, nonatomic) IBOutlet YJTagView *bottomView;
@property (nonatomic, strong) NSArray *titleArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleArray = @[@"小龙虾", @"日本皮皮虾", @"蓝莓", @"美国进口蓝莓", @"意大利拉面", @"西瓜", @"苹果", @"牛肉", @"🐂", @"🍎", @"🍌",];
    YJTagView *view = [[YJTagView alloc] initWithFrame:CGRectMake(15, 64, self.view.frame.size.width -15, 20)];
    view.dataSource = self;
    view.delegate = self;
    view.themeColor = [UIColor redColor];
    view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    view.tagCornerRadius = 0;
    [self.view addSubview:view];
    
    self.bottomView.dataSource = self;
    self.bottomView.delegate = self;
}

- (NSInteger)numOfItems {
    return self.titleArray.count;
}

- (NSString *)tagView:(YJTagView *)tagView titleForItemAtIndex:(NSInteger)index {
    return self.titleArray[index];
}

- (void)tagView:(YJTagView *)tagView didSelectedItemAtIndex:(NSInteger)index {
    NSLog(@"点击%@", self.titleArray[index]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
