//
//  <%prefix%><%module%>Controller.h
//  <%project%>
//
//  Created by ANODA on 6/2/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "ANCollectionController.h"

@class <%prefix%><%module%>DataSource;
@class <%prefix%><%module%>CellViewModel;

@protocol <%prefix%><%module%>ControllerDelegate <NSObject>

- (void)itemSelectedWithModel:(<%prefix%><%module%>CellViewModel *)model;

@end

@interface <%prefix%><%module%>Controller : ANCollectionController

@property (nonatomic, weak) id<<%prefix%><%module%>ControllerDelegate> delegate;

- (void)updateDataSource:(<%prefix%><%module%>DataSource*)dataSource;

@end
