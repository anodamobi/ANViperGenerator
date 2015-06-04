//
//  <%prefix%><%module%>Presenter.m
//  <%project%>
//
//  Created by Oksana Kovalchuk on 1/11/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>Presenter.h"
#import "<%prefix%><%module%>DataSource.h"

@interface <%prefix%><%module%>Presenter () <<%prefix%><%module%>DataSourceDelegate>

@property (nonatomic, strong) <%prefix%><%module%>DataSource* tableDataSource;

@end

@implementation <%prefix%><%module%>Presenter

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.tableDataSource = [<%prefix%><%module%>DataSource new];
        self.tableDataSource.delegate = self;
    }
    return self;
}

- (void)configurePresenterWithUserInterface:(UIViewController<<%prefix%><%module%>ViewInterface>*)userInterface
{
    self.userInterface = userInterface;
    [self.interactor loadData];
}

#pragma mark - Output

- (void)dataLoaded:(<%prefix%>DomainModel *)model
{
    [self.tableDataSource setupStorageWithModels:[self _convertToViewModels:model.list]]
}

- (NSArray *)_convertToViewModels:(NSArray *)models
{
    return [[models.rac_sequence map:^id(id value) {
        
        <%prefix%>CellViewModel* viewModel = [<%prefix%>CellViewModel new];
        viewModel.item = value;
        return viewModel;
        
    }] array];
}

#pragma mark - Module Interface

- (void)backSelected
{
    [self.wireframe dismissTableController];
}


@end
