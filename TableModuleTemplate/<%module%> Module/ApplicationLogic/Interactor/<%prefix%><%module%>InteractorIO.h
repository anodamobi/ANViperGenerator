//
//  <%prefix%><%module%>InteractorIO.h
//  <%project%>
//
//  Created by ANODA on 1/12/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

@protocol <%prefix%><%module%>InteractorInput <NSObject>

- (void)loadData;

@end


@protocol <%prefix%><%module%>InteractorOutput <NSObject>

- (void)dataLoaded:(NSArray*)array;

@end