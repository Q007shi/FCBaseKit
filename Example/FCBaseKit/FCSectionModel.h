//
//  FCSectionModel.h
//  FCBaseKit_Example
//
//  Created by 石富才 on 2020/12/22.
//  Copyright © 2020 Q007. All rights reserved.
//

#import <FCBaseKit/FCCollectionViewSectionModel.h>

@class FCItemModel;
@interface FCSectionModel<T: FCItemModel *> : FCCollectionViewSectionModel<T>

@end

@interface FCItemModel : FCCollectionViewItemModel

@end
