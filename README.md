# YJTagView

### 介绍
封装了开发过程中常用到的tag（标签）的使用，并提供友好的API（模仿UITableView）

### 效果展示

![](https://github.com/HuyangJake/YJTagView/blob/master/tagView.gif)

### 特点
* 根据标签文字自动计算tag的宽度
* 根据tags自动计算tagView的高度
* 可自定义配置字体大小，颜色，圆角等
* 配置最大展示数量等

### 使用方法

* 将demo中的`YJTagView`目录复制到项目中
* 在需要使用tagView的Controller添加 `#import "YJTagView.h"` 
* 创建tagView视图对象，通过IB或者Frame
* 调用一下API进行自定义展示

``` objectivec
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
```
详细使用可见demo


####  感谢开源库 [UICollectionViewLeftAlignedLayout](UICollectionViewLeftAlignedLayout)
