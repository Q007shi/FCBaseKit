//
//  FCCollectionViewSectionModel.m
//  FCBaseKit
//
//  Created by 石富才 on 2020/12/16.
//

#import "FCCollectionViewSectionModel.h"

@implementation FCCollectionViewSectionModel

- (NSMutableDictionary *)blockActions{
    if (!_blockActions) {
        _blockActions = NSMutableDictionary.dictionary;
    }
    return _blockActions;
}

@end

@implementation FCCollectionViewItemModel

- (NSMutableDictionary *)blockActions{
    if (!_blockActions) {
        _blockActions = NSMutableDictionary.dictionary;
    }
    return _blockActions;
}

@end
