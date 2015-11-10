//
//  <%prefix%><%module%>Presenter.m
//  <%project%>
//
//  Created by ANODA on 1/11/15.
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
    [self.userInterface updateDataSource:self.tableDataSource];
    [self.interactor loadData];
}

#pragma mark - Output

- (void)dataLoaded:(NSArray*)array
{
    [self.tableDataSource setupStorageFromArray:array];
}

#pragma mark - Module Interface

- (void)backSelected
{
    [self.wireframe dismiss<%module%>Controller];
}


@end
