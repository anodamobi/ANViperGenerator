//
//  <%prefix%><%module%>VC.m
//  <%project%>
//
//  Created by ANODA on 1/3/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>VC.h"
#import "ANTableContainerView.h"
#import "<%prefix%><%module%>Controller.h"
#import "<%prefix%><%module%>DataSource.h"
#import "<%prefix%><%module%>CellViewModel.h"

@interface <%prefix%><%module%>VC () <<%prefix%><%module%>ControllerDelegate>

@property (nonatomic, strong) ANTableContainerView* contentView;
@property (nonatomic, strong) <%prefix%><%module%>Controller* controller;

@end

@implementation <%prefix%><%module%>VC

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.contentView = [ANTableContainerView containerWithTableViewStyle:UITableViewStyleGrouped];
        self.controller = [[<%prefix%><%module%>Controller alloc] initWithTableView:self.contentView.tableView];
        self.controller.delegate = self;
    }
    return self;
}

- (void)loadView
{
    self.view = self.contentView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = NSLocalizedString(@"navTitle", nil);
    
    @weakify(self);
    [self addLeftNavigationButtonWithType:ANBarButtonTypeBack block:^{
        @strongify(self);
        [self.eventHandler backSelected];
    }];
}

#pragma mark - User Interface

- (void)updateDataSource:(<%prefix%><%module%>DataSource *)dataSource
{
    [self.controller updateDataSource:dataSource];
}

#pragma mark - ANTableController Delegate

- (void)itemSelectedWithModel:(<%prefix%><%module%>CellViewModel *)model
{
    
}

@end
