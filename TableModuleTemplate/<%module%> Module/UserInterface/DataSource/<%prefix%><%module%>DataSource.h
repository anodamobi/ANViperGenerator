//
//  <%prefix%><%module%>DataSource.h
//  <%project%>
//
//  Created by ANODA on 1/11/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

@class ANMemoryStorage;

@protocol <%prefix%><%module%>DataSourceDelegate <NSObject>

@end

@interface <%prefix%><%module%>DataSource : NSObject

@property (nonatomic, strong) ANMemoryStorage* storage;
@property (nonatomic, weak) id<<%prefix%><%module%>DataSourceDelegate> delegate;

- (void)setupStorageWithArray:(NSArray*)array;

@end
