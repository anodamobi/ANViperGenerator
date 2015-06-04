//
//  <%prefix%><%module%>Controller.h
//  <%project%>
//
//  Created by Oleg Panforov on 6/2/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "ANTableController.h"

@class <%prefix%><%module%>DataSource;

@protocol <%prefix%><%module%>ControllerDelegate <NSObject>

- (void)itemSelectedWithModel:(<%prefix%>CellViewModel *)model;

@end

@interface <%prefix%><%module%>Controller : ANTableController

@property (nonatomic, weak) id<<%prefix%><%module%>ControllerDelegate> delegate;

- (void)updateDataSource:(<%prefix%><%module%>DataSource*)dataSource;

@end
