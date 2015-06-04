//
//  <%prefix%><%module%>ViewInterface.h
//  <%project%>
//
//  Created by Oksana Kovalchuk on 1/12/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

@class <%prefix%><%module%>DataSource;

@protocol <%prefix%><%module%>ViewInterface <NSObject>

- (void)updateDataSource:(<%prefix%><%module%>DataSource*)dataSource;

@end
