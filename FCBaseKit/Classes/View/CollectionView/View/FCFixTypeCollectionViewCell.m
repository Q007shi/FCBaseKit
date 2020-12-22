//
//  FCFixTypeCollectionViewCell.m
//  FCBaseKit
//
//  Created by 石富才 on 2020/12/22.
//

#import "FCFixTypeCollectionViewCell.h"
#import "FCCollectionViewSectionModel.h"

@implementation FCFixTypeCollectionViewCell

- (void)setItemM:(FCCollectionViewItemModel *)itemM{
    _itemM = itemM;
    switch (itemM.sizeType) {
        case FCBaseKitSizeTypeFixWidth:{
            // 新建一个宽度约束
            NSLayoutConstraint *widthFenceConstraint = [NSLayoutConstraint constraintWithItem:self.contentView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:itemM.itemSize.width];
            // 添加宽度约束
            [self.contentView addConstraint:widthFenceConstraint];
            // 获取约束后的size
            CGSize fittingSize = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
            // 记得移除
            [self.contentView removeConstraint:widthFenceConstraint];
            CGFloat height = (itemM.maxHeight > 0 && fittingSize.height > itemM.maxHeight) ? itemM.maxHeight : fittingSize.height;
            itemM.itemSize = CGSizeMake(itemM.itemSize.width, height);
        }break;
        case FCBaseKitSizeTypeFixHeight:{
            // 新建一个宽度约束
            NSLayoutConstraint *heightFenceConstraint = [NSLayoutConstraint constraintWithItem:self.contentView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:itemM.itemSize.height];
            // 添加宽度约束
            [self.contentView addConstraint:heightFenceConstraint];
            // 获取约束后的size
            CGSize fittingSize = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
            // 记得移除
            [self.contentView removeConstraint:heightFenceConstraint];
            CGFloat width = (itemM.maxWidth > 0 && fittingSize.width > itemM.maxWidth) ? itemM.maxWidth : fittingSize.width;
            itemM.itemSize = CGSizeMake(width, itemM.itemSize.height);
        }break;
            
        default:
            break;
    }
}

@end
