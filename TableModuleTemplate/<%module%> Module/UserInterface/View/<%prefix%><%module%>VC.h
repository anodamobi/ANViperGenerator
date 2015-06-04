//
//  <%prefix%><%module%>VC.h
//  <%project%>
//
//  Created by Oksana Kovalchuk on 1/3/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>ViewInterface.h"
#import "<%prefix%><%module%>ModuleInterface.h"
#import "<%prefix%>BaseVC.h"

@interface <%prefix%><%module%>VC : <%prefix%>BaseVC <<%prefix%><%module%>ViewInterface>

@property (nonatomic, weak) id<<%prefix%><%module%>ModuleInterface> eventHandler;

@end
