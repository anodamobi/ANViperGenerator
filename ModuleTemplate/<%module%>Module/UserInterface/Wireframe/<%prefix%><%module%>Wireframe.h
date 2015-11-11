//
//  <%prefix%><%module%>Wireframe.h
//  <%project%>
//
//  Created by ANODA on 1/11/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

@interface <%prefix%><%module%>Wireframe : NSObject

- (void)present<%module%>ControllerFromWindow:(UIWindow*)window;
- (void)present<%module%>ControllerFromNavigationController:(UINavigationController*)nc;
- (void)presentModalOn:(UIViewController*)viewController;

- (void)dismiss<%module%>Controller;

@end
