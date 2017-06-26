//
//  YJTagCollectionViewCell.h
//  tagsView
//
//  Created by Jake on 2017/6/22.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YJTagCollectionViewCell : UICollectionViewCell

@property (nonatomic,copy) NSString *content;
@property (weak, nonatomic) IBOutlet UILabel *tagLabel;

+ (CGSize) getSizeWithContent:(NSString *) content maxWidth:(CGFloat)maxWidth customHeight:(CGFloat)cellHeight;

@end
