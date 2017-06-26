//
//  YJTagView.h
//  tagsView
//
//  Created by Jake on 2017/6/22.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YJTagViewProtocol.h"


@interface YJTagView : UIView

@property (nonatomic, weak) id<YJTagViewDelegate> delegate;
@property (nonatomic, weak) id<YJTagViewDataSource> dataSource;

/** 外观配置项 */

@property (nonatomic, strong) UIColor *themeColor;

@property (nonatomic, assign) NSInteger tagCornerRadius;

@property (nonatomic, assign) CGFloat cellHeight;

- (void)reloadData;

@end
