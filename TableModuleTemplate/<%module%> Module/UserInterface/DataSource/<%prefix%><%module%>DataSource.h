//
//  <%prefix%><%module%>DataSource.h
//  <%project%>
//
//  Created by Oksana Kovalchuk on 1/11/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

@class ANMemoryStorage;

typedef NS_ENUM(NSInteger, <%prefix%>Section)
{
    <%prefix%>SectionOne,
    <%prefix%>SectionTwo
};

@protocol <%prefix%><%module%>DataSourceDelegate <NSObject>

@end

@interface <%prefix%><%module%>DataSource : NSObject

@property (nonatomic, strong) ANMemoryStorage* storage;
@property (nonatomic, weak) id<<%prefix%><%module%>DataSourceDelegate> delegate;

- (void)setupStorageWithModels:(NSArray*)list;

@end
