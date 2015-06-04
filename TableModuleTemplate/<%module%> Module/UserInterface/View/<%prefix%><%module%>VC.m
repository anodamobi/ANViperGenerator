//
//  <%prefix%><%module%>VC.m
//  <%project%>
//
//  Created by Oksana Kovalchuk on 1/3/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>VC.h"
#import "<%prefix%>TableContainerView.h"
#import "<%prefix%><%module%>Controller.h"
#import "<%prefix%><%module%>DataSource.h"

@interface <%prefix%><%module%>C () <<%prefix%><%module%>ControllerDelegate>

@property (nonatomic, strong) <%prefix%>TableContainerView* contentView;
@property (nonatomic, strong) <%prefix%><%module%>Controller* controller;

@end

@implementation <%prefix%><%module%>VC

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.contentView = [<%prefix%>TableContainerView containerWithTableViewStyle:UITableViewStyleGrouped];
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

#pragma mark - CDTableController Delegate

- (void)itemSelectedWithModel:(<%prefix%>CellViewModel *)model
{
    
}

@end
