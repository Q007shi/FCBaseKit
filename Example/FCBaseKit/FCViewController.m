//
//  FCViewController.m
//  FCBaseKit
//
//  Created by Q007 on 05/30/2020.
//  Copyright (c) 2020 Q007. All rights reserved.
//

#import "FCViewController.h"
#import <FCBaseKit/FCTableViewCell.h>

#import "FCSectionModel.h"

@interface FCViewController ()

@end

@implementation FCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    FCSectionModel<FCItemModel *> *sectionM;
    [sectionM.itemModels addObject:FCItemModel.new];
    [sectionM.itemModels addObject:FCItemModel.new];
    sectionM.itemModels.firstObject.abc = YES;
    
}


@end
