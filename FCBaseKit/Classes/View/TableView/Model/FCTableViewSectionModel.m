//
//  FCTableViewSectionModel.m
//  FCBaseKit
//
//  Created by 石富才 on 2020/12/16.
//

#import "FCTableViewSectionModel.h"

@implementation FCTableViewSectionModel

- (NSMutableDictionary *)blockActions{
    if (!_blockActions) {
        _blockActions = NSMutableDictionary.dictionary;
    }
    return _blockActions;
}

@end

@implementation FCTableViewCellModel

- (NSMutableDictionary *)blockActions{
    if (!_blockActions) {
        _blockActions = NSMutableDictionary.dictionary;
    }
    return _blockActions;
}

@end
