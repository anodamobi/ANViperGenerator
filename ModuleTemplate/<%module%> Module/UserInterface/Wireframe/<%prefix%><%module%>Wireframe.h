//
//  <%prefix%><%module%>Wireframe.h
//  Versoos
//
//  Created by Oksana Kovalchuk on 1/11/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

@interface <%prefix%><%module%>Wireframe : NSObject

- (void)present<%module%>ControllerFromNavigationController:(UINavigationController*)nc;
- (void)dismiss<%module%>Controller;

@end
