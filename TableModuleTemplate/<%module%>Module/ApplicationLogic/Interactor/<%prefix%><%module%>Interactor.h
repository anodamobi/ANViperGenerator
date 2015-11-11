//
//  <%prefix%><%module%>Interactor.h
//  <%project%>
//
//  Created by ANODA on 1/11/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>InteractorIO.h"

@interface <%prefix%><%module%>Interactor : NSObject <<%prefix%><%module%>InteractorInput>

@property (nonatomic, weak) id<<%prefix%><%module%>InteractorOutput> output;

@end

