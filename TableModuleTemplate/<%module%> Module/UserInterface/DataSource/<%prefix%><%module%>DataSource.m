//
//  <%prefix%><%module%>DataSource.m
//  <%project%>
//
//  Created by ANODA on 1/11/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>DataSource.h"
#import "ANMemoryStorage.h"
#import "<%prefix%><%module%>CellViewModel.h"

@implementation <%prefix%><%module%>DataSource

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.storage = [ANMemoryStorage storage];
    }
    return self;
}

- (void)setupStorageFromArray:(NSArray*)array
{
    [self.storage batchUpdateWithBlock:^{
        [self _addSectionWithItems:[self _convertToViewModels:array]];
    }];
}

#pragma mark - Private

- (NSArray *)_convertToViewModels:(NSArray *)models
{
    return [[models.rac_sequence map:^id(id value) {
        
        <%prefix%><%module%>CellViewModel* viewModel = [<%prefix%><%module%>CellViewModel new];
        [viewModel updateWithItem:value];
        
        return viewModel;
    }] array];
}

- (void)_addSectionWithItems:(NSArray*)items
{
    if (!ANIsEmpty(items))
    {
        [self.storage addItems:items toSection:0];
    }
    //    [self.storage setSectionHeaderModel:NSLocalizedString(@"SectionOneTitle", nil) forSectionIndex:0];
}

@end
