//
//  YJTagViewProtocol.h
//  tagsView
//
//  Created by Jake on 2017/6/24.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import <Foundation/Foundation.h>

@class YJTagView;

@protocol YJTagViewDataSource <NSObject>

@required
- (NSInteger)numOfItems;

- (NSString *)tagView:(YJTagView *)tagView titleForItemAtIndex:(NSInteger)index;

@end

@protocol YJTagViewDelegate <NSObject>

@optional
- (void)tagView:(YJTagView *)tagView didSelectedItemAtIndex:(NSInteger)index;

/**
 使用frame布局实现一下代理方法获得填充数据后的正确的高度(高度已内部调整)

 @param tagView tagView
 @param height 高度
 */
- (void)tagView:(YJTagView *)tagView heightUpdated:(CGFloat)height;

@end
