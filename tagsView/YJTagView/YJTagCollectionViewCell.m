//
//  YJTagCollectionViewCell.m
//  tagsView
//
//  Created by Jake on 2017/6/22.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import "YJTagCollectionViewCell.h"

@implementation YJTagCollectionViewCell

- (void)setContent:(NSString *)content
{
    _content = content;
    [_tagLabel setText:content];
}

+ (CGSize) getSizeWithContent:(NSString *) content maxWidth:(CGFloat)maxWidth customHeight:(CGFloat)cellHeight
{
    NSMutableParagraphStyle *style = [NSMutableParagraphStyle new];
    style.lineBreakMode = NSLineBreakByTruncatingTail;
    CGSize size = [content boundingRectWithSize:CGSizeMake(maxWidth-20, 24) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:12],NSParagraphStyleAttributeName:style} context:nil].size;
    return CGSizeMake(size.width+20, cellHeight);
}

@end
